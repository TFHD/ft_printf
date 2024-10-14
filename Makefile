NAME =	libftprintf.a

SRC =	ft_printf.c \
	ft_printf_int.c \
	ft_printf_char.c \
	ft_printf_ui.c \
	ft_printf_hexa.c \
	ft_printf_ptr.c

OBJ =	${SRC:.c=.o}

CC = 	gcc

FLAGS =	-Wall -Wextra -Werror -I ./

AR = 	ar -rcs

all : $(NAME)

$(NAME) : $(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o : %.c
	$(CC) $(FLAGS) $(SRC) -c 

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all
	

PHONY : re clean fclean
