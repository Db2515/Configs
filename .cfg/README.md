A bare repository setup based on the article https://www.atlassian.com/git/tutorials/dotfiles

To clone onto a new machine
1) Add the alias to the shell rc file
  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
2) Add .cfg to gitignore
  echo ".cfg" >> .gitignore
3) Clone the repo
   git clone --bare https://github.com/Db2515/Configs.git $HOME/.cfg
4) Checkout the contents of the repo to the $HOME dir
  config checkout
  4a) If any config files exist this may fail you can backup these files using
    mkdir -p .config-backup && \
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
    xargs -I{} mv {} .config-backup/{}
  4b) Then rerun
    config checkout
5) Setup showUntrackedFiles on the local repo
  config config --local status.showUntrackedFiles no

From then use config in place of git for interacting with this repo


