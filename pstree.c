#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void usage(void) {
    fprintf(stderr, "Usage: pstree [OPTION]...\n\
    \nDisplay a tree of processs.\n");
    fprintf(stderr, "\n\
    -n, --numeric-sort  sort output by PID\n\
    -p, --show-pids     show PIDs of every process\n"
    );
    fprintf(stderr, "\n\
    -V --version        display version information\n"
    );
    exit(1);
}

int main (int argc, char **argv) {
    //get opt 
    bool opt_V = false, opt_p = false, opt_n = false;

    for (int i = 0; i < argc; i++) {
        if(!(strcmp(argv[i], "-p") || strcmp(argv[i], "--show-pids")))
            opt_p = true;
        else if (!(strcmp(argv[i], "-n") || strcmp(argv[i], "--numeric-sort")))
            opt_n = true;
        else if (!(strcmp(argv[i], "-v") || strcmp(argv[i], "--version")))
            opt_V = true;
        else 
            usage();
    }
    //get and save informations of all threads 
    
    //data processing

    //prepare the formal output

    //print to correspond output stream

    return 0;
}