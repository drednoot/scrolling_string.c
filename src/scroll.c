#include <stdio.h>
#include <string.h>
#include <time.h>

// arguments:
// <length> - length of the resulting string
// <period> - period in seconds
// <string> - the string itself

int main(int argc, char **argv) {
    if (argc < 4) return 1;

    int len = 0;
    int T = 0;
    char *str = NULL;
    int strlength = 0;
    unsigned long seconds;
    int offset;

    sscanf(argv[1], "%d", &len);
    sscanf(argv[2], "%d", &T);
    str = argv[3];

    // calculating string offset
    strlength = strlen(str);
    seconds = time(NULL);
    offset = (int)((seconds / (unsigned long)T) % (unsigned long)strlength);

    for (int i = 0; i < len; i++) {
        putchar(str[(i + offset) % strlength]);
    }

    return 0;
}
