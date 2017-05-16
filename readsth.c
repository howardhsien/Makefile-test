#include<stdio.h>
#define CHUNK 1024 /* read 1024 bytes at a time */

int readSth(char * filename){
   char buf[CHUNK];
   FILE *file;
   size_t nread;

   file = fopen(filename, "r");
   if (file) {
      while ((nread = fread(buf, 1, sizeof buf, file)) > 0)
         fwrite(buf, 1, nread, stdout);
      if (ferror(file)) {
        /* deal with error */
      }
      fclose(file);
      return 0;
   }
   else
      return -1;
}
