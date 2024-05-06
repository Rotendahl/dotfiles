################################################################################
######################## Bad-ass fish config file! #############################
################################################################################

if test -e {$HOME}/.iterm2_shell_integration.fish
    source {$HOME}/.iterm2_shell_integration.fish
end

if test it2check
    ## Sends prompt to iterm if iterm
    functions iterm2_prompt_mark1; and iterm2_prompt_mark
end

## Prompt
if test -e {$HOME}/Config/oh-my-posh.yaml
    oh-my-posh init fish --config {$HOME}/Config/oh-my-posh.yaml | source
end

## Get 1password plugins
if test -e {$HOME}/.config/op/plugins.sh
    source {$HOME}/.config/op/plugins.sh
end

### Abbreviations
abbr --add teli telepresence intercept
abbr --add tree colorls --tree=2
abbr --add rm trash
abbr --add reload source ~/.config/fish/config.fish

### Tele presence abbriviations
abbr --add tele-budget telepresence intercept budget-app --port 5006:80 --http-header=all --replace
abbr --add tele-enricher telepresence intercept transaction-enrichment-app --port 5010:80 --http-header=all --replace

## Acitvate pyenv
pyenv init - | source

## Set colorscheme
if test $(dark-mode status) = off
    it2setcolor preset 'Solarized Light'
else
    it2setcolor preset Dracula
end
