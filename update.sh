# Copyright (C) 2024 Jacopo Donati
#
# Questo file fa parte di dotfiles.
#
# dotfiles è software libero: puoi redistribuirlo e/o modificarlo
# secondo i termini della GNU General Public License pubblicata dalla
# Free Software Foundation, sia la versione 3 della Licenza, sia
# (a tua scelta) una versione successiva.
#
# dotfiles è distribuito nella speranza che sia utile,
# ma SENZA ALCUNA GARANZIA; senza neppure la garanzia implicita di
# COMMERCIABILITÀ o IDONEITÀ PER UN PARTICOLARE SCOPO.  Vedi la
# GNU General Public License per maggiori dettagli.
#
# Dovresti aver ricevuto una copia della GNU General Public License
# insieme a dotfiles.  In caso contrario, vedi <http://www.gnu.org/licenses/>.
#
# Questo è un semplice script che copia i miei dotfiles da $HOME al repository

#!/bin/zsh

echo "Backup di emacs..."
rsync -aE --delete --exclude="*~" ~/.emacs.d ./
echo "Backup di lynx..."
rsync -aE --delete ~/.lynxrc ./
echo "Backup di spotdl..."
rsync -aE --delete ~/.spotdl/config.json ./.spotdl/
echo "Backup di vim..."
rsync -aE --delete ~/.vim ./
echo "Backup di yt-dlp..."
rsync -aE --delete ~/.yt-dlp ./
