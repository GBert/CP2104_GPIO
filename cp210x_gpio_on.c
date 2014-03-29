#include <fcntl.h>
#include <unistd.h>
#include <stropts.h>
#include <termios.h>
#include <stdio.h>

#define IOCTL_GPIOGET 0x8000
#define IOCTL_GPIOSET 0x8001

int main()
{
	int fd;
	printf("CP2104 GPIO Test\n");
	fd = open("/dev/ttyUSB0", O_RDWR | O_NOCTTY | O_NDELAY);
	if (fd == -1)
	{
		fprintf(stderr,"Error opening port /dev/ttyUSB0\n");
		return -1;
	}

	unsigned gpio, i;
	gpio = 0;

	ioctl(fd, IOCTL_GPIOGET, &gpio);
	printf("original gpio = 0x%08X\n",gpio);

	for (i = 0; i<= 10000; i++) {
		gpio = 0x00010001;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = 0x00020002;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = 0x00040004;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = 0x00080008;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = 0x00000008;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = 0x00000004;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = 0x00000002;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
		gpio = 0x00000001;
		ioctl(fd, IOCTL_GPIOSET, &gpio);
	}

	close(fd);

	return 0;
}
