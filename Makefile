# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akunegel <akunegel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/24 14:39:06 by akunegel          #+#    #+#              #
#    Updated: 2023/04/24 15:02:29 by akunegel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILES = ft_c.c ft_d.c ft_hexa_maj.c ft_hexa_min.c ft_pourcent.c ft_printf.c \
		ft_putstr_fd.c ft_s.c ft_u.c

OBJECTS = $(FILES:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

all: ${NAME}

${NAME}:
	${CC} ${CFLAGS} -c ${FILES}
	ar -rcs libftprintf.a ${OBJECTS}

clean:
	rm -f *.o

fclean: clean
	rm -f ${NAME}

re:	fclean all