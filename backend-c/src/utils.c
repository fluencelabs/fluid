#include "utils.h"
#include "../sdk/allocator.h"

#include <string.h>
#include <stdlib.h>

char *prepare_response(const char *response, int response_length) {
    const int RESPONSE_SIZE_BYTES = 4;
    char *result = (char *)allocate(response_length + RESPONSE_SIZE_BYTES);

    for(int i = 0; i < RESPONSE_SIZE_BYTES; ++i) {
        result[i] = (response_length >> 8*i) & 0xFF;
    }

    memcpy(result + RESPONSE_SIZE_BYTES, response, response_length);

    return result;
}
