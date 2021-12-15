/*
 * @Descripttion: 
 * @version: 
 * @Author: sueRimn
 * @Date: 2021-08-17 22:58:18
 * @LastEditors: sueRimn
 * @LastEditTime: 2021-08-25 23:02:02
 */
#include <stdio.h>
#include <unistd.h>
int main() {
  pid_t pid = fork();
  if ( pid == 0) {
    printf("i am child\n");
    return 1;
  }
    printf("i am parent");
    return 0;
}