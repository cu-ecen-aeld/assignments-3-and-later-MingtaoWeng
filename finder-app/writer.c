/*
* Writer application for assignment 2
* Author: Mingtao Weng
*/
#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[])
{
    FILE *pf;
    
    openlog(NULL, 0, LOG_USER);
    
    if (argc < 3)
    {
        syslog(LOG_ERR, "File name or text string was not specified!");
        return 1;
    }
    
    pf = fopen(argv[1], "w");
    if (pf == NULL)
    {
        syslog(LOG_ERR, "Failed to create %s for writing!", argv[1]);
        return 1;
    }
    
    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    fprintf(pf, "%s", argv[2]);
    fclose(pf);
    return 0;
}

