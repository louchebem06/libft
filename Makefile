# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bledda <bledda@student.42nice.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/05 05:34:19 by bledda            #+#    #+#              #
#    Updated: 2021/06/05 06:25:22 by bledda           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a

FOLDER		= src/

SRCS		= ${FOLDER}ft_memset.c \
			${FOLDER}ft_bzero.c \
			${FOLDER}ft_memcpy.c \
			${FOLDER}ft_memccpy.c \
			${FOLDER}ft_atoi.c \
			${FOLDER}ft_strlen.c \
			${FOLDER}ft_isdigit.c \
			${FOLDER}ft_isalpha.c \
			${FOLDER}ft_isalnum.c \
			${FOLDER}ft_isascii.c \
			${FOLDER}ft_isprint.c \
			${FOLDER}ft_memchr.c \
			${FOLDER}ft_memcmp.c \
			${FOLDER}ft_memmove.c \
			${FOLDER}ft_strchr.c \
			${FOLDER}ft_strrchr.c \
			${FOLDER}ft_strlcpy.c \
			${FOLDER}ft_strlcat.c \
			${FOLDER}ft_calloc.c \
			${FOLDER}ft_strdup.c \
			${FOLDER}ft_strncmp.c \
			${FOLDER}ft_strnstr.c \
			${FOLDER}ft_tolower.c \
			${FOLDER}ft_toupper.c \
			${FOLDER}ft_split.c \
			${FOLDER}ft_strjoin.c \
			${FOLDER}ft_itoa.c \
			${FOLDER}ft_substr.c \
			${FOLDER}ft_putchar_fd.c \
			${FOLDER}ft_putendl_fd.c \
			${FOLDER}ft_putnbr_fd.c \
			${FOLDER}ft_putstr_fd.c \
			${FOLDER}ft_strmapi.c \
			${FOLDER}ft_strtrim.c \
			${FOLDER}ft_isset_tab.c \
			${FOLDER}ft_isset.c \
			${FOLDER}ft_iswhitespace.c

SRCSBONUS	= ${FOLDER}ft_lstnew.c \
			${FOLDER}ft_lstadd_front.c \
			${FOLDER}ft_lstsize.c \
			${FOLDER}ft_lstlast.c \
			${FOLDER}ft_lstadd_back.c \
			${FOLDER}ft_lstdelone.c \
			${FOLDER}ft_lstclear.c \
			${FOLDER}ft_lstiter.c \
			${FOLDER}ft_lstmap.c

OBJS		= ${SRCS:.c=.o}
OBJSBONUS	= ${SRCSBONUS:.c=.o}

CC			= gcc
CFLAGS  	= -Wall -Wextra -Werror
RM			= rm -f

$(NAME):	${OBJS}
			ar -rcs ${NAME} ${OBJS}

.c.o:
			${CC} ${CFLAGS} -c $< -o $@

all:		${NAME} bonus

clean:
			${RM} ${OBJS} ${OBJSBONUS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

bonus: 		${OBJSBONUS}
			ar -rcs ${NAME} ${OBJSBONUS}

.PHONY: 	all clean fclean re bonus
