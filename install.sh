#!/usr/bin/env fish


# Fisher https://github.com/jorgebucaran/fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

## Install fisher plugins
fisher install PatrickF1/fzf.fish
fisher install 'ryoppippi/fish-poetry'

# Create symlinks
ln -s -F $(realpath fish) ~/.config/fish
ln -s -F $(realpath global_gitignore) ~/.global_gitignore
ln -s -F $(realpath gitconfig) ~/.gitconfig

# Get Completions
mkdir -p ~/.config/fish/completions/generated
wget -O ~/.config/fish/completions/generated/wd.fish https://github.com/Rotendahl/plugin-wd/raw/master/completions/wd.fish
wget -O ~/.config/fish/completions/generated/git.fish https://github.com/fish-shell/fish-shell/raw/master/share/completions/git.fish
helm completion fish >/Users/rotendahl/.cache/fish/generated_completions/helm.fish
kubectl completion fish >/Users/rotendahl/.cache/fish/generated_completions/kubectl.fish
gh completion -s fish >/Users/rotendahl/.cache/fish/generated_completions/gh.fish
pip completion --fish >/Users/rotendahl/.cache/fish/generated_completions/pip.fish
telepresence completion fish >/Users/rotendahl/.cache/fish/generated_completions/telepresence.fish


# Get functions
wget -O fish/functions/wd.fish https://raw.githubusercontent.com/Rotendahl/plugin-wd/master/functions/wd.fish


## Get themes
mkdir -p ~/.config/colorls/
wget -O ~/.config/colorls/dark_colors.yaml https://github.com/dracula/colorls/raw/3f1e3cf325c86e3019a1b7c3776b3a348fe6b530/dark_colors.yaml


## Set paths
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
fish_add_path $HOME/.dotnet/tools
fish_add_path $HOME/.cabal/bin $HOME/.ghcup/bin
fish_add_path /opt/homebrew/opt/ruby/bin
fish_add_path $(string join '/bin:' $(string split ':' $(gem environment gempath)))/bin
fish_add_path  /Users/rotendahl/.local/bin

set -U fish_complete_path ~/.config/fish/completions/generated $fish_complete_path


## Variables
set -U VISUAL nvim
set -U EDITOR $VISUAL
set -U SSH_AUTH_SOCK /Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock
set -U PAGER bat
set -U PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
set -U DOTNET_WATCH_RESTART_ON_RUDE_EDIT true
### Work Variables
set -U MONTHIO_VALUT ZICVAAFIWRBTHEEFSG3KXXATRI
set -U SENTRY_DSN ''
set -U CLOUD_DEVELOPMENT_NAMESPACE brotual
