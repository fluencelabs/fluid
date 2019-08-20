#include "model.h"
#include "utils.h"
#include "../sdk/logger.h"
#include "../sdk/syscalls_stubs.c"
#include "../libs/tiny-json/tiny-json.h"

#include <string.h>
#include <stdlib.h>

const char *add_post_request(const json_t *json);
const char *fetch_posts_request(const json_t *json);

bool isInited = 0;

const char *invoke(char *str, int length) {
    // initialize SQLite by creating schema
    if(0 == isInited) {
        create_scheme();
        isInited = 1;
    }

    json_t pool[10];
    const unsigned int pool_size = sizeof pool / sizeof *pool;

    // try to parse json and extract action field
    const json_t *json = json_create(str, pool, pool_size);
    if(!json) {
        const char error[] = "Mailformed json given";
        return prepare_response(error, sizeof error);
    }

    json_t const *action_json = json_getProperty(json, "action");
    if(0 == action_json) {
        const char error[] = "Given json doesn't contain action field";
        return prepare_response(error, sizeof error);
    }

    if(JSON_TEXT != json_getType(action_json)) {
        const char error[] = "action field is mailformed";
        return prepare_response(error, sizeof error);
    }

    const char *action = json_getValue(action_json);

    // use action to determine the desired activity
    const char *result = "";
    if(0 == strcmp(action, "Post")) {
        result = add_post_request(json);
    } else if(0 == strcmp(action, "Fetch")) {
        result = fetch_posts_request(json);
    } else {
        // no suitable action given
        char *error = (char *)malloc(1024);
        const int error_size = snprintf(error, 1024, "%s given as the action field, but only `Post` and `Fetch` are supported", action);
        result = prepare_response(error, error_size);
        free(error);
    }

    return result;
}

const char *add_post_request(const json_t *json) {
    // try to extract username and message properties
    const json_t *username_json = json_getProperty(json, "username");
    const json_t *message_json = json_getProperty(json, "message");
    if(0 == message_json || 0 == username_json) {
        const char error[] = "Given json doesn't contain message or username field";
        return prepare_response(error, sizeof error);
    }

    if(JSON_TEXT != json_getType(message_json) || JSON_TEXT != json_getType(username_json)) {
        const char error[] = "message or action fields are mailformed";
        return prepare_response(error, sizeof error);
    }

    const char *username = json_getValue(username_json);
    const char *message = json_getValue(message_json);

    const char *add_post_result = add_post(username, strlen(username),
            message, strlen(message));
    if(0 == add_post_result) {
        const char error[] = "add_post failed";
        return prepare_response(error, sizeof error);
    }

    // returns the updated post count to the client
    const char *count = get_posts_count();
    if(0 == count) {
        const char error[] = "get_posts_count failed";
        return prepare_response(error, sizeof error);
    }

    char result[256];
    const int result_len = snprintf(result, 256, "{ count: \"%s\" }", count);

    return prepare_response(result, result_len);
}

const char *fetch_posts_request(const json_t *json) {
    // try to extract username, offset and count fields
    const json_t *username_json = json_getProperty(json, "username");
    const json_t *offset_json = json_getProperty(json, "offset");
    const json_t *count_json = json_getProperty(json, "count");

    if((0 != username_json && JSON_TEXT != json_getType(username_json)) ||
        (0 != offset_json && JSON_INTEGER != json_getType(offset_json)) ||
        (0 != count_json && JSON_INTEGER != json_getType(count_json))
    ) {
        const char error[] = "json fields are mailformed";
        return prepare_response(error, sizeof(error));
    }

    int count = 100;
    if(0 != count_json) {
        count = json_getInteger(count_json);
    }

    int offset = 0;
    if(0 != offset_json) {
        offset = json_getInteger(offset_json);
    }

    char *result = "";
    if(0 == username_json) {
        // if no username specified, jsut return all posts
        result = get_all_posts(offset, count);
        if(0 == result) {
            const char error[] = "get_all_posts failed";
            return prepare_response(error, sizeof(error));
        }
    } else {
        const char *username = json_getValue(username_json);
        result = get_posts_by_username(username, strlen(username), offset, count);
        if(0 == result) {
            const char error[] = "get_posts_by_username failed";
            return prepare_response(error, sizeof(error));
        }
    }

    const int result_len = strlen(result) + 100;
    char *result_out = malloc(result_len);

    const int result_out_len = snprintf(result_out, result_len, "{ posts: \"%s\" }", result);

    const char *prepared_response = prepare_response(result_out, result_out_len);
    free(result_out);

    return prepared_response;
}
