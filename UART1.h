// UART1.h
#ifndef UART1_H
#define UART1_H

void uart1_init(void);
void uart1_send_char(char c);
void uart1_send_str(const char *str);

#endif