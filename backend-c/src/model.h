#ifndef FLUID_MODEL_H
#define FLUID_MODEL_H

void create_scheme();

char *add_post(const char *username, int username_length, const char *message, int message_length);

char *get_all_posts(int offset, int count);

char *get_posts_by_username(const char *username, int username_length, int offset, int count);

char *get_posts_count();

#endif //FLUID_MODEL_H
