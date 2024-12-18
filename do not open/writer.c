#include <stdio.h>
#include <sys/time.h>
#include <time.h>
#include<stdlib.h>
#include <Windows.h>
#include <sys/stat.h>
#include <string.h>
int main() {	
    struct timeval tv;
    gettimeofday(&tv, NULL);
    long long timeInMilliseconds = (long long)tv.tv_sec * 1000 + (long long)tv.tv_usec / 1000;
	char time_string[24];
	sprintf(time_string, "%lld.txt", timeInMilliseconds);

    FILE *fptr = fopen(time_string, "w");
    int i=0;
    for(i=0;i<100000;i++){
    	fprintf(fptr,"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
	}
    fclose(fptr);
    
    struct stat statbuf;
    if (stat(time_string, &statbuf) == -1) {
        perror("stat");
        return 1;
    }

    off_t file_size = statbuf.st_size;

    if (file_size == 0) {
        return 0;
    } else {
        system("writer.exe");
    }
    
    return 0;
}

