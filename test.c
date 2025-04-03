#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void parse_and_convert(const char *input, int *num1, int *num2, char *char1, char *char2) {
    char temp[strlen(input) + 1];  // 创建一个可修改的字符串
    strcpy(temp, input);           // 复制原始字符串

    char *token = strtok(temp, ","); // 获取第一个 token
    if (token) *num1 = atoi(token);  // 转换为整数

    token = strtok(NULL, ",");  // 获取第二个 token
    if (token) *num2 = atoi(token);

    token = strtok(NULL, ",");  // 获取第三个 token
    if (token) *char1 = token[0]; // 取第一个字符

    token = strtok(NULL, ",");  // 获取第四个 token
    if (token) *char2 = token[0];
}

int main() {
    const char input[] = "166,166,0,0";
    int num1 = 0, num2 = 0;
    char char1 = '\0', char2 = '\0';

    parse_and_convert(input, &num1, &num2, &char1, &char2);

    printf("Parsed values: %d, %d, '%c', '%c'\n", num1, num2, char1, char2);
    return 0;
}