# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebondi <ebondi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/12 10:57:34 by ebondi            #+#    #+#              #
#    Updated: 2022/01/18 17:38:31 by ebondi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_isalpha.c \
	   ft_isdigit.c \
	   ft_isalnum.c \
	   ft_isascii.c \
	   ft_isprint.c \
	   ft_strlen.c \
	   ft_memset.c \
	   ft_bzero.c \
	   ft_memcpy.c \
	   ft_memmove.c \
	   ft_strlcpy.c \
	   ft_strlcat.c \
	   ft_toupper.c \
	   ft_tolower.c \
	   ft_strchr.c \
	   ft_strrchr.c \
	   ft_strncmp.c \
	   ft_memcmp.c \
	   ft_strnstr.c \
	   ft_atoi.c \
	   ft_calloc.c \
	   ft_strdup.c \
	   ft_substr.c \
	   ft_strjoin.c \
	   ft_strtrim.c \
	   ft_split.c \
	   ft_itoa.c \
	   ft_strmapi.c \
	   ft_striteri.c \
	   ft_putchar_fd.c \
	   ft_putstr_fd.c \
	   ft_putendl_fd.c \
	   ft_putnbr_fd.c \
	   ft_memchr.c \

OBJS = $(SRCS:.c=.o)

BONUS  = ft_lstnew.c \
		 ft_lstadd_front.c \
		 ft_lstsize.c \
		 ft_lstlast.c \
		 ft_lstadd_back.c \
		 ft_lstdelone.c \
		 ft_lstclear.c \
		 ft_lstiter.c \
		 ft_lstmap.c \

BONUS_OBJS	= $(BONUS:.c=.o)

HDRS =  libft.h
FLAGS = -Wall -Wextra -Werror
$(NAME):
	gcc -c -I $(HDRS) $(SRCS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
bonus:
	gcc -c -I $(HDRS) $(BONUS)
	ar rc $(NAME) $(BONUS_OBJS)
	ranlib $(NAME)
all:        $(NAME)
clean:
	rm -f $(OBJS) $(BONUS_OBJS)
fclean:     clean
	rm -f $(NAME)
re:	fclean all
.PHONY:	all clean fclean re bonus
