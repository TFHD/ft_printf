#include "ft_printf.h"

int ft_putchar(char c)
{
	write(1, &c, 1);
	return (1);
}

int ft_putstr(char *str)
{
	int	len_write;

	len_write = 0;
	if (str)
	{
		while (*str)
			len_write += ft_putchar(*(str++));
	}
	else
		len_write += ft_putstr(STRNULL);
	return (len_write);
}
