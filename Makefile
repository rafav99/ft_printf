NAME = libftprintf.a
EVERYC = ft_printf.c printf_put.c printf_write.c printf_hex.c
OBJS = $(EVERYC:.c=.o)
all: $(NAME)
$(NAME): ft_printf.c
		gcc -Wall -Werror -Wextra -c $(EVERYC)
		ar rc $(NAME) $(OBJS)
clean:	
		rm -f $(OBJS) $(NAME)
fclean: clean
		rm -f .a
re: fclean all
