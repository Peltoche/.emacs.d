#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ppeltier <ppeltier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/11 14:09:51 by ppeltier          #+#    #+#              #
#    Updated: 2014/11/11 14:10:09 by ppeltier         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME		= gen-make


SRC			= main.c

OBJ			= $(SRC:.c=.o)
CC			= /usr/bin/gcc
CFLAGS		= -Wall -Wextra -Werror
CDEBUG		= -W -Wall -ansi -pedantic -g
RM			= /bin/rm -f
ECHO			= /bin/echo -e

$(NAME)	:		$(OBJ)
				@$(CC) $(INC) $(CFLAGS) -o $(NAME) $(OBJ)
				@$(ECHO) '\033[0;32m> Compiled\033[0m'

clean	:
				-@$(RM) $(OBJ)
				-@$(RM) *~
				@$(ECHO) '\033[0;35m> Directory cleaned\033[0m'

all		:		$(NAME)

fclean	:		clean
				-@$(RM) $(NAME)
				@$(ECHO) '\033[0;35m> Remove executable\033[0m'

re		:		fclean all

.PHONY	:		all clean re

debug	:		$(OBJ)
				@$(CC) $(INC) $(CDEBUG) -o $(NAME) $(OBJ)
				@$(ECHO) '\033[0;32m> Mode Debug: done\033[0m'

.c.o	:
				$(CC) $(CFLAGS) -o $@ -c $<
