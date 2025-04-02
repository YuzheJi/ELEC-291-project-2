#include "../Common/Include/stm32l051xx.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "UART1.h"

// RCC (Clock) Registers
// #define RCC_BASE        0x40021000
#define RCC_IOPENR      (*(volatile uint32_t *)(RCC_BASE + 0x2C))
#define RCC_APB2ENR     (*(volatile uint32_t *)(RCC_BASE + 0x34))

// GPIOB Registers
// #define GPIOB_BASE      0x50000400
#define GPIOB_MODER     (*(volatile uint32_t *)(GPIOB_BASE + 0x00))
#define GPIOB_AFRL      (*(volatile uint32_t *)(GPIOB_BASE + 0x20))

// USART1 Registers
// #define USART1_BASE     0x40013800
#define USART1_CR1      (*(volatile uint32_t *)(USART1_BASE + 0x00))
#define USART1_CR2      (*(volatile uint32_t *)(USART1_BASE + 0x04))
#define USART1_BRR      (*(volatile uint32_t *)(USART1_BASE + 0x0C))
#define USART1_ISR      (*(volatile uint32_t *)(USART1_BASE + 0x1C))
#define USART1_RDR      (*(volatile uint32_t *)(USART1_BASE + 0x24))
#define USART1_TDR      (*(volatile uint32_t *)(USART1_BASE + 0x28))


void uart1_init(void) {
    // 1. Enable GPIOB and USART1 clocks
    RCC_IOPENR |= (1 << 1);       // Enable GPIOB clock
    RCC_APB2ENR |= (1 << 14);     // Enable USART1 clock

    // 2. Set PB6 and PB7 to alternate function mode (AF mode = 10)
    GPIOB_MODER &= ~((3 << (6 * 2)) | (3 << (7 * 2)));  // Clear mode bits
    GPIOB_MODER |=  (2 << (6 * 2)) | (2 << (7 * 2));    // Set mode to AF

    // 3. Set alternate function for PB6 and PB7 to AF0 (USART1)
    GPIOB_AFRL &= ~((0xF << (6 * 4)) | (0xF << (7 * 4)));  // AF0 is 0b0000

    // 4. Set baud rate: 9600 with 16 MHz clock => BRR = 16000000 / 9600 = ~1667
    USART1_BRR = 3334;

    // 5. Enable USART1, TX and RX
    USART1_CR1 = (1 << 0)   // UE: USART enable
               | (1 << 2)   // RE: Receiver enable
               | (1 << 3);  // TE: Transmitter enable
}

void uart1_send_char(char c) {
    // Wait until TXE (Transmit data register empty)
    while (!(USART1_ISR & (1 << 7)));
    USART1_TDR = c;
}

void uart1_send_str(const char *str) {
    while (*str) {
        uart1_send_char(*str++);
    }
}