;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    skeleton.el                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ppeltier <ppeltier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2014/11/09 14:52:26 by ppeltier          #+#    #+#              ;
;    Updated: 2014/11/11 16:47:11 by ppeltier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; Makefiles's Skeleton
(define-skeleton create-makefile
  "Create a Makefile."
  ""
  "\n"
  "NAME		= # Put your binary name"
  "\n"
  "SRC			= # Put your sources"
  "\n"
  "\n"
  "OBJ			= $(SRC:.c=.o)\n"
  "CC			= /usr/bin/gcc\n"
  "CFLAGS		= -Wall -Wextra -Werror\n"
  "CDEBUG		= -Wall -Wextra -Werror -ansi -pedantic -g\n"
  "RM			= /bin/rm -f\n"
  "ECHO			= /bin/echo -e\n"
  "\n"
  "$(NAME)	:		$(OBJ)\n"
  "				@$(CC) $(CFLAGS) -o $(NAME) $(OBJ)\n"
  "				@$(ECHO) '> Compiled'\n"
  "\n"
  "clean	:\n"
  "				-@$(RM) $(OBJ)\n"
  "				-@$(RM) *~\n"
  "				@$(ECHO) '> Directory cleaned'\n"
  "\n"
  "all		:		$(NAME)\n"
  "\n"
  "fclean	:		clean\n"
  "				-@$(RM) $(NAME)\n"
  "				@$(ECHO) '> Remove executable'\n"
  "\n"
  "re		:		fclean all\n"
  "\n"
  ".PHONY	:		all clean re\n"
  "\n"
  "debug	:		$(OBJ)\n"
  "				@$(CC) $(INC) $(CDEBUG) -o $(NAME) $(OBJ)\n"
  "				@$(ECHO) '> Mode Debug: done'\n"
  "\n"
  ".c.o	:\n"
  "				$(CC) $(CFLAGS) -o $@ -c $<\n")
