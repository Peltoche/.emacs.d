# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    installation.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ppeltier <ppeltier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/10 21:59:18 by ppeltier          #+#    #+#              #
#    Updated: 2014/11/10 22:06:08 by ppeltier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

open http://cx4a.org/pub/auto-complete/auto-complete-1.3.1.zip;
cd ~/Download/;
unzip auto-complete-1.3.1.zip;
cd auto-complete-1.3.1/;
make;
make install;
curl http://www.logic.at/prolog/linum/linum.el >> linum.el
mv linum.el ~/.emacs.d/lib/


