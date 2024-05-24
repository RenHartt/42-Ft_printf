# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgoron <bgoron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/08 19:07:50 by bgoron            #+#    #+#              #
#    Updated: 2024/05/24 14:55:24 by bgoron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = src/ft_isinset.c\
src/ft_orient.c\
src/ft_pointer.c\
src/ft_printf.c\
src/ft_putchar.c\
src/ft_putnbr.c\
src/ft_putnbr_base.c\
src/ft_putstr.c\
src/ft_sort.c\
src/ft_strlen.c\
src/main.c\

FLAG = -Wall -Wextra -Werror
IFLAG = -I include
CC = cc
OBJ_DIR = .obj
OBJ = $(addprefix $(OBJ_DIR)/, $(SRC:.c=.o))

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_DIR)/%.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(FLAG) $(IFLAG) -o $@ -c $<

clean:
	rm -f $(OBJ)
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)
	rm -rf $(OBJ_DIR)

re: fclean all

.PHONY: all clean fclean re
.SILENT: