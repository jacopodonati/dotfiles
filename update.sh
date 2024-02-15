# Copyright (C) 2024 Jacopo Donati
# 
# This file is part of dotfiles.
# 
# dotfiles is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# dotfiles is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with dotfiles.  If not, see <http://www.gnu.org/licenses/>.

# This is a simple script that copies my dotfiles from $HOME to the repo

#!/bin/zsh

rsync -aE --delete --exclude="*~" ~/.emacs.d ./
rsync -aE --delete ~/.vim ./
rsync -aE --delete ~/.spotdl ./
rsync -aE --delete ~/.yt-dlp ./