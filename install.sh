#!/usr/bin/env fish


# Get Completions
wget -O fish/completions/docker.fish https://github.com/docker/cli/raw/master/contrib/completion/fish/docker.fish
helm completion fish > fish/completions/helm.fish
kubectl completion fish > fish/completions/kubectl.fish
gh completion -s fish > fish/completions/gh.fish

# Fish
ln -s fish ~/.config/fish
