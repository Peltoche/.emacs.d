;*******************************************************************************;
;                                                                               ;
;                                                          :::      ::::::::    ;
;    dotemacs                                            :+:      :+:    :+:    ;
;                                                      +:+ +:+         +:+      ;
;    by: thor <thor@42.fr>                           +#+  +:+       +#+         ;
;                                                  +#+#+#+#+#+   +#+            ;
;    Created: 2013/06/18 14:01:14 by thor               #+#    #+#              ;
;    Updated: 2014/12/10 19:56:14 by ppeltier         ###   ########.fr        ;
;                                                                               ;
;*******************************************************************************;

; Load general features files
(if (file-exists-p "/usr/share/emacs/site-lisp/")
	(add-to-list 'load-path (expand-file-name "/usr/share/emacs/site-lisp/")))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/root_42/"))

(load "list.el")
(load "string.el")
(load "comments.el")
(load "header.el")

; Set default emacs configuration
(set-language-environment "UTF-8")
(setq-default font-lock-global-modes nil)
(setq-default line-number-mode nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                             64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

; Load user configuration
(if (file-exists-p "~/.emacs.d/myemacs") (load-file "~/.emacs.d/myemacs"))



;*******************************************************************************;
