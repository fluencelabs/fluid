#include <stdio.h>

size_t __stdio_write(FILE *f, const unsigned char *buf, size_t len) {
    return 1;
}

int __stdio_close(FILE *f) {
    return 1;
}

off_t __stdio_seek(FILE *_f, off_t _offset, int _value) {
    return 1;
}

