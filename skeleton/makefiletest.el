;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    skeleton.el                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ppeltier <ppeltier@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2014/11/09 14:52:26 by ppeltier          #+#    #+#              ;
;    Updated: 2014/11/11 02:03:53 by ppeltier         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;; Makefiles's Skeleton
(define-skeleton create-makefiletest
  "Create a Makefile."
  ""
  "\n"
  "NAME		= # Put your binary name"
  "\n"
  (progn
	(setq src_fold (skeleton-read "Sources Folder: "))
	(if (equal src_fold ".")
		""
	  "OBJDIR		= "))
	(if (equal src_fold ".")
		""
	  src_fold)
  "\n"
  "\n"
  "SRC			= "
  "\n"
  "LIB			= -Llibft/ -lft\n"
  "INC			= -I -Iinclude/\n"
  "\n"
  "OBJ			= $(SRC:.c=.o)\n"
  "CC			= /usr/bin/gcc\n"
  "CFLAGS		= -Wall -Wextra -Werror\n"
  "CDEBUG		= -W -Wall -ansi -pedantic -g -ggdb\n"
  "RM			= /bin/rm -f\n"
  "ECHO			= /bin/echo -e\n"
  "\n"
  "$(NAME)	:		$(OBJ)\n"
  "				$(CC) $(INC) $(CFLAGS) -o $(NAME) $(OBJ) $(LIB)\n"
  "				@$(ECHO) '\\033[0;32m> Compiled\\033[0m'\n"
  "\n"
  "clean	:\n"
  "				-@$(RM) $(OBJ)\n"
  "				-@$(RM) *~\n"
  "				@$(ECHO) '\\033[0;35m> Directory cleaned\\033[0m'\n"
  "\n"
  "all		:		$(NAME)\n"
  "\n"
  "fclean	:		clean\n"
  "				-@$(RM) $(NAME)\n"
  "				@$(ECHO) '\\033[0;35m> Remove executable\\033[0m'\n"
  "\n"
  "re		:		fclean all\n"
  "\n"
  ".PHONY	:		all clean re\n"
  "\n"
  "debug	:		$(OBJ)\n"
  "				@$(CC) $(INC) $(CDEBUG) -o $(NAME) $(OBJ) $(LIB)\n"
  "				@$(ECHO) '\\033[0;32m> Mode Debug: done\\033[0m'\n"
  "\n"
  ".c.o	:\n"
  "				$(CC) $(INC) $(CFLAGS) -o $(OBJDIR)/$@ -c $<\n")
