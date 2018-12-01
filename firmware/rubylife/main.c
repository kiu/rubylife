/*
 * rubylife.c
 *
 * Created: 07.10.2018 01:20:25
 * Author : kiu
 */ 

#define F_CPU 4000000L
#define LED_COUNT 8

#define PWM_HIGH 0xE1
#define PWM_MIDDLE 0x37
#define PWM_LOW 0x14
#define PWM_OFF 0x00

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <stdlib.h>

volatile uint8_t pwm_led[LED_COUNT] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
volatile uint8_t pwm_i = 0;
uint8_t i;


ISR(TIM0_COMPA_vect) {
	asm("WDR");
	
	uint8_t pwm_out = 0x00;
	
	if (pwm_i >= pwm_led[0]) {
		pwm_out |= _BV(0);
	}
	if (pwm_i >= pwm_led[1]) {
		pwm_out |= _BV(1);
	}
	if (pwm_i >= pwm_led[2]) {
		pwm_out |= _BV(2);
	}
	if (pwm_i >= pwm_led[3]) {
		pwm_out |= _BV(3);
	}
	if (pwm_i >= pwm_led[4]) {
		pwm_out |= _BV(4);
	}
	if (pwm_i >= pwm_led[5]) {
		pwm_out |= _BV(5);
	}
	if (pwm_i >= pwm_led[6]) {
		pwm_out |= _BV(6);
	}
	if (pwm_i >= pwm_led[7]) {
		pwm_out |= _BV(7);
	}

	PORTA = pwm_out;

	pwm_i++;
}

ISR(WDT_vect) {
	WDTCSR |= _BV(WDIE);
}

void pwm_led_set(uint8_t idx, uint8_t val) {
	if (idx > LED_COUNT - 1) {
		return;
	}
	pwm_led[idx] = val;
}

uint8_t pwm_led_get(uint8_t idx) {
	if (idx > LED_COUNT - 1) {
		return 0;
	}
	return pwm_led[idx];
}

void pwm_fade_out() {
	uint8_t max = 0;

	for (i = 0; i < LED_COUNT; i++) {
		if (pwm_led[i] > max) {
			max = pwm_led[i];
		}
	}

	while (max > 0) {
		max--;

		for (i = 0; i < LED_COUNT; i++) {
			if (pwm_led[i] > max) {
				pwm_led[i] = max;
			}
		}
		
		_delay_us(500);
	}
}

void show_sparkle() {
	
	for (uint16_t j = 0; j < 1600; j++) {
		switch(rand() % 30) {
			case 0:
				pwm_led[rand() % 8] = PWM_HIGH;
				break;
			case 1:
			case 2:
				pwm_led[rand() % 8] = PWM_MIDDLE;
				break;
			case 3:
			case 4:
			case 5:
				pwm_led[rand() % 8] = PWM_LOW;
				break;
			default:
				pwm_led[rand() % 8] = PWM_OFF;
		}
		_delay_ms(5);
	}
	
}

void show_single() {
	
	for (uint8_t r = 0; r < 3; r++) {

		for (i = 0; i < PWM_HIGH; i++) {
			pwm_led[2] = i;
			_delay_ms(5);
		}

		for (i = PWM_HIGH; i > 0 ; i--) {
			pwm_led[2] = i;
			_delay_ms(5);
		}

	}

}

void show_swirl(uint8_t dir) {
	
	uint8_t order[] = {99, 99, 99, 99, 7, 5, 0, 1, 4, 3, 6, 7, 5, 0, 1, 4, 3, 6, 7, 5, 0, 1, 4, 3, 6, 7, 5, 0, 1, 4, 3, 6, 7, 5, 0, 1, 4, 3, 6, 7, 5, 0, 1, 4, 3, 6, 7, 5, 0, 1, 4, 3, 6, 7, 5, 0, 1, 4, 3, 6, 99, 99, 99, 99};
	uint8_t size = sizeof(order);
	uint8_t b;

	if (!dir) {
		for (i = 0; i < size; i++) {
			b = 0xFF;
			while (b > 0) {
				b--;
				if (i > 0 && 0xFF - b <= PWM_HIGH && 0xFF - b > pwm_led_get(order[i])) {
					pwm_led_set(order[i], 0xFF - b);
				}
				if (i > 1 && b >= PWM_MIDDLE && b < pwm_led_get(order[i - 1])) {
					pwm_led_set(order[i - 1], b);
				}
				if (i > 2 && b >= PWM_LOW && b < pwm_led_get(order[i - 2])) {
					pwm_led_set(order[i - 2], b);
				}
				if (i > 3 && b >= PWM_OFF && b < pwm_led_get(order[i - 3])) {
					pwm_led_set(order[i - 3], b);
				}
				
				_delay_us(400);
			}
		}
	} else {
		for (i = size - 1; i > 0; i--) {
			b = 0xFF;
			while (b > 0) {
				b--;
				if (i + 0 < size - 1 && 0xFF - b <= PWM_HIGH && 0xFF - b > pwm_led_get(order[i])) {
					pwm_led_set(order[i], 0xFF - b);
				}
				if (i + 1 < size - 1 && b >= PWM_MIDDLE && b < pwm_led_get(order[i + 1])) {
					pwm_led_set(order[i + 1], b);
				}
				if (i + 2 < size - 1 && b >= PWM_LOW && b < pwm_led_get(order[i + 2])) {
					pwm_led_set(order[i + 2], b);
				}
				if (i + 3 < size - 1 && b >= PWM_OFF && b < pwm_led_get(order[i + 3])) {
					pwm_led_set(order[i + 3], b);
				}
				
				_delay_us(400);
			}
		}
	}

}

void next() {
	pwm_fade_out();
	
	DDRA = 0x00;
	sleep_enable();
	sleep_mode(); // 8s
	sleep_mode(); // 8s
	sleep_mode(); // 8s	
	sleep_disable();
	DDRA = 0xFF;
}

int main(void) {
	
	CCP = 0xD8; // Set signature for privileged access
	WDTCSR = _BV(WDE);
	
	CCP = 0xD8; // Set signature for privileged access
	WDTCSR = _BV(WDIE) | _BV(WDP3) | _BV(WDP0);
		
	CCP = 0xD8; // Set signature for privileged access
	//CLKPSR = 0x00;	// 8Mhz
	CLKPSR = 0x01;		// 4Mhz
	//CLKPSR = 0x02;	// 2Mhz
	//CLKPSR = 0x03;	// 1Mhz

	DDRA = 0xFF; // PA0-PA7 are all outputs
	PORTA = 0xFF; // PA0-PA7 are all high --> LEDs are off
		
	PRR = _BV(PRADC) | _BV(PRSPI) | _BV(PRTWI) | _BV(PRTIM1); // Save power by disabling ADC, SPI, TWI and Timer1
	ACSRA = _BV(ACD); // Save power by disabling Analog Comparator
	
	// Setup TIMER0 used by PWM
	//TCCR0B |= _BV(CS02) | _BV(CS00);	// 1024
	TCCR0B |= _BV(CS02);				// 256
	//TCCR0B |= _BV(CS01) | _BV(CS00);	// 64	
	//TCCR0B |= _BV(CS01);				// 8
	TCCR0A |= _BV(WGM01); // CTC Mode	
	OCR0A = 0; // Match
	TIMSK |=_BV(OCIE0A); // Interrupt Match	

	srand(423);

	set_sleep_mode(SLEEP_MODE_PWR_DOWN);

	sei();

	while(1) {
		show_sparkle();
		next();
		
		show_swirl(0);
		next();
		
		show_single();
		next();
		
		show_swirl(1);
		next();
	}
}

