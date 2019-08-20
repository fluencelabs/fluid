#ifndef C_TEMPLATE_SIDE_MODULE_API_H
#define C_TEMPLATE_SIDE_MODULE_API_H

#include <string.h>
#include <stdlib.h>

/*
 * Concatenate preprocessor tokens A and B without expanding macro definitions
 * (however, if invoked from a macro, macro arguments are expanded).
 */
#define PPCAT_NX(A, B) A ## B

/*
 * Concatenate preprocessor tokens A and B after macro-expanding them.
 */
#define PPCAT(A, B) PPCAT_NX(A, B)

/*
 * Turn A into a string literal without expanding macro definitions
 * (however, if invoked from a macro, macro arguments are expanded).
 */
#define STRINGIZE_NX(A) #A

/*
 * Turn A into a string literal after macro-expanding it.
 */
#define STRINGIZE(A) STRINGIZE_NX(A)


#define __MODULE_IMPORT(module_name) \
    void module_name ## _store(char *ptr, char byte) __attribute__((__import_module__(#module_name), __import_name__(STRINGIZE(PPCAT(module_name, _store))))); \
    unsigned char module_name ## _load(char *ptr) __attribute__((__import_module__(#module_name), __import_name__(STRINGIZE(PPCAT(module_name, _load))))); \
    char* module_name ## _allocate(unsigned int size) __attribute__((__import_module__(#module_name), __import_name__(STRINGIZE(PPCAT(module_name, _allocate))))); \
    void module_name ## _deallocate(char *ptr, unsigned int size) __attribute__((__import_module__(#module_name), __import_name__(STRINGIZE(PPCAT(module_name, _deallocate))))); \
    char* module_name ## _invoke(char *ptr, int size) __attribute__((__import_module__(#module_name), __import_name__(STRINGIZE(PPCAT(module_name, _invoke))))); \
    \
char * module_name ## _call(const char *ptr, int length) { \
    char *request_ptr = module_name ## _allocate(length); \
    \
    for(int i = 0; i < length; ++i) { \
        module_name ## _store(request_ptr + i, ptr[i]); \
    } \
    char *result = module_name ## _invoke(request_ptr, length); \
    \
    unsigned int result_size = 0; \
    for (int i = 0; i < 4; ++i) { \
        result_size = result_size | (module_name ## _load(result + i) << 8*i); \
    } \
    \
    char *result_out = malloc(result_size + 1); \
    for(int i = 0; i < result_size; ++i) { \
        result_out[i] = module_name ## _load(result + 4 + i); \
    }\
    \
    result_out[result_size] = '\0'; \
    \
    module_name ## _deallocate(result, result_size); \
    \
    return result_out;\
}

#endif //C_TEMPLATE_SIDE_MODULE_API_H
