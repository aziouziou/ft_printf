# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abziouzi <abziouzi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/10 14:27:00 by abziouzi          #+#    #+#              #
#    Updated: 2023/04/29 22:27:09 by abziouzi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Name of the executable
NAME	=	libftprintf.a

# Compiler and flags
CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror

# Source files
SRC		=	ft_printf.c \
			ft_putchar.c \
			ft_putnbr.c \
			ft_put_uns_nbr.c \
			ft_putstr.c \
			ft_put_hexa.c \
			ft_nbr_len.c \
			ft_put_ptr.c

# Object files
OBJ		=	$(SRC:.c=.o)

# Compilation rule
all		:	$(NAME)

# Linking rule
$(NAME)	:	$(OBJ)
			ar rcs $(NAME) $(OBJ)
			@ clear

# Compilation of object files
%.o		:	%.c
			$(CC) $(CFLAGS) -c $< -o $@
			@ clear

# Clean rule
clean	:
			rm -f $(OBJ)
			@ clear

# Clean and fclean rules
fclean	:	clean
			rm -f $(NAME)
			@ clear

# Rebuild rule
re		:	fclean all

# .PHONY targets
.PHONY	:	all clean fclean re
