#!/usr/bin/env fish


# Get Completions
wget -O fish/completions/docker.fish https://github.com/docker/cli/raw/master/contrib/completion/fish/docker.fish
wget -O fish/completions/wd.fish https://github.com/Rotendahl/plugin-wd/raw/master/completions/wd.fish
helm completion fish > fish/completions/helm.fish
kubectl completion fish > fish/completions/kubectl.fish
gh completion -s fish > fish/completions/gh.fish
pip completion --fish > fish/completions/pip.fish

# Get functions
wget -O fish/functions/wd.fish https://raw.githubusercontent.com/Rotendahl/plugin-wd/master/functions/wd.fish

# Fish
ln -s -F $(realpath fish) ~/.config/fish


## Get themes
mkdir -p ~/.config/colorls/
wget -O ~/.config/colorls/dark_colors.yaml https://github.com/dracula/colorls/raw/3f1e3cf325c86e3019a1b7c3776b3a348fe6b530/dark_colors.yaml