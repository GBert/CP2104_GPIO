#include <fcntl.h>
#include <unistd.h>
#include <stropts.h>
#include <termios.h>
#include <stdio.h>

#define IOCTL_GPIOGET	0x8000
#define IOCTL_GPIOSET	0x8001
#define GPIO_0_ON	0x00010001
#define GPIO_0_OFF	0x00000001
#define GPIO_1_ON	GPIO_0_ON  << 1
#define GPIO_1_OFF	GPIO_0_OFF << 1
#define GPIO_2_ON	GPIO_0_ON  << 2
#define GPIO_2_OFF	GPIO_0_OFF << 2
#define GPIO_3_ON	GPIO_0_ON  << 3
#define GPIO_3_OFF	GPIO_0_OFF << 3

int main() {
	int fd;
	unsigned int gpio, i;
	printf("CP2104 GPIO Test on ttyUSB0\n");
	fd = open("/dev/ttyUSB0", O_RDWR | O_NOCTTY | O_NDELAY);
	if (fd == -1) {
		fprintf(stderr,"Error opening port /dev/ttyUSB0\n");
		return -1;
	}
	gpio = 0;

	ioctl(fd, IOCTL_GPIOGET, &gpio);
	printf("original gpio = 0x%08X\n",gpio);

	for (i = 0; i<= 10000; i++) {
		/* switch on the GPIOs */
		gpio = GPIO_0_ON;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = GPIO_1_ON;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = GPIO_2_ON;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = GPIO_3_ON;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		/* switch off the GPIOs - reverse */
		gpio = GPIO_3_OFF;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = GPIO_2_OFF;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = GPIO_1_OFF;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = GPIO_0_OFF;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
	}
	close(fd);
	return 0;
}
