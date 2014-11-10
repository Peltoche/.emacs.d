.emacs.d
========

# Description

Configuration Emacs **Special 42** avec commentaires

**WARNING** *Some of these configurations and/or commands may be specific to a certain setup (42 school), some commands might useless to others or could lead to troubleshooting*

# Content

* Header Automatique
* Clavier
*

# Installation

#### Proteger les anciennes configs

```
cd ~ ; cp .emacs .emacs.old ; cp -r .emacs.d/ .emacs.d.old/;

```
*Vous pourrez toujours revenir a votre ancienne config en enlevant les .old*

#### Telecharger le github dans le home:

```
cd ~ ; git clone https://github.com/Peltoche/.emacs.d.git ;

```
*Pensez a cloner de temps en temps si vous voulez profiter des nouvelles trouvailles*

#### Deplacer le .myemacs et le .emacs dans le home

```
cd ~/.emacs.d/ ; cp .myemacs ~ ; cp .emacs ~;

```
##### Enjoy !