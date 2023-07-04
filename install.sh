#!/usr/bin/env fish


# Get Completions
wget -O fish/completions/docker.fish https://github.com/docker/cli/raw/master/contrib/completion/fish/docker.fish
wget -O fish/completions/wd.fish https://github.com/Rotendahl/plugin-wd/raw/master/completions/wd.fish
helm completion fish > fish/completions/helm.fish
kubectl completion fish > fish/completions/kubectl.fish
gh completion -s fish > fish/completions/gh.fish


# Get functions
wget -O fish/functions/wd.fish https://raw.githubusercontent.com/Rotendahl/plugin-wd/master/functions/wd.fish

# Fish
ln -s fish ~/.config/fish
