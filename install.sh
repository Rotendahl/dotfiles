#!/usr/bin/env fish

# Get Completions
mkdir -p ~/.config/fish/completions/generated
wget -O ~/.config/fish/completions/generated/docker.fish https://github.com/docker/cli/raw/master/contrib/completion/fish/docker.fish
wget -O ~/.config/fish/completions/generated/wd.fish https://github.com/Rotendahl/plugin-wd/raw/master/completions/wd.fish
helm completion fish > ~/.config/fish/completions/generated/helm.fish
kubectl completion fish > ~/.config/fish/completions/generated/kubectl.fish
gh completion -s fish > ~/.config/fish/completions/generated/gh.fish
pip completion --fish > ~/.config/fish/completions/generated/pip.fish
telepresence completion fish > ~/.config/fish/completions/generated/telepresence.fish

# Get functions
wget -O fish/functions/wd.fish https://raw.githubusercontent.com/Rotendahl/plugin-wd/master/functions/wd.fish

# Fish
ln -s -F  fish ~/.config/fish


## Get themes
mkdir -p ~/.config/colorls/
wget -O ~/.config/colorls/dark_colors.yaml https://github.com/dracula/colorls/raw/3f1e3cf325c86e3019a1b7c3776b3a348fe6b530/dark_colors.yaml