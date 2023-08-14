################################################################################
######################## Bad-ass fish config file! #############################
################################################################################

if test -e {$HOME}/.iterm2_shell_integration.fish
    source {$HOME}/.iterm2_shell_integration.fish
end

if test it2check
    iterm2_prompt_mark ## Sends prompt to iterm
end

## Prompt
if test -e {$HOME}/Config/oh-my-posh.yaml
    oh-my-posh init fish --config {$HOME}/Config/oh-my-posh.yaml | source
end

## Get 1password plugins
if test -e {$HOME}/.config/op/plugins.sh
    source {$HOME}/.config/op/plugins.sh
end

## Alias
alias py="bpython"
alias vi="nvim"

### Abbreviations
abbr --add teli telepresence intercept
abbr --add tree colorls --tree=2
abbr --add rm trash
abbr --add reload source ~/.config/fish/config.fish

## Acitvate pyenv
pyenv init - | source

## Set colorscheme
if test $(dark-mode status) = off
    it2setcolor preset 'Solarized Light'
else
    it2setcolor preset Dracula
end
