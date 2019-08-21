#include "../sdk/side_module_api.h"
#include "../sdk/logger.h"

#include <stdlib.h>
#include <stdio.h>

__MODULE_IMPORT(sqlite)

// TODO: introduce error codes and security checks

void create_scheme() {
    const char create_sql[] = "CREATE TABLE messages(message text, username text)";
    sqlite_call(create_sql, sizeof(create_sql));
}

char *add_post(const char *username, int username_length, const char *message, int message_length) {
    // at now wasm-ld has 1024 bytes for stack permission by default - that why dynamic allocation here
    const int request_size = username_length + message_length + 50;
    char *add_sql = (char *)malloc(request_size);
    if(0 == add_sql) {
        return 0;
    }

    const int add_sql_length = snprintf(add_sql, request_size, "INSERT INTO messages VALUES(\"%s\", \"%s\")", message, username);
    if(add_sql_length < 0) {
        return 0;
    }

    return sqlite_call(add_sql, add_sql_length);
}

char *get_all_posts(int offset, int count) {
    // at now wasm-ld has 1024 bytes for stack permission by default - that why dynamic allocation here
    char *get_sql = (char *)malloc(256);
    if(0 == get_sql) {
        return 0;
    }

    const int get_sql_length = snprintf(get_sql, 256,
            "SELECT json_group_array("
            "            json_object('message', message, 'username', username)"
            "        ) AS json_result FROM ("
            "            SELECT * FROM messages LIMIT %d OFFSET %d"
            "        )", count, offset);
    if(get_sql_length < 0) {
        return 0;
    }

    return sqlite_call(get_sql, get_sql_length);
}

char *get_posts_by_username(const char *username, int username_length, int offset, int count) {
    // at now wasm-ld has 1024 bytes for stack permission by default - that why dynamic allocation here
    const int request_size = username_length + 300;
    char *get_sql = (char *)malloc(request_size);
    if(0 == get_sql) {
        return 0;
    }

    const int add_sql_length = snprintf(get_sql, request_size,
            "SELECT json_group_array("
            "            json_object('message', message, 'username', username)"
            "        ) AS json_result FROM ("
            "                SELECT * FROM messages where username = '%s' LIMIT %d OFFSET %d"
            "        )",
            username, count, offset);
    if(add_sql_length < 0) {
        return 0;
    }

    return sqlite_call(get_sql, add_sql_length);
}

char *get_posts_count() {
    const char count_sql[] = "SELECT COUNT(*) from messages";
    return sqlite_call(count_sql, sizeof(count_sql));
}
