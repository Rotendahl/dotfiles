################################################################################
######################## Bad-ass fish config file! #############################
################################################################################

if test -e {$HOME}/.iterm2_shell_integration.fish
    source {$HOME}/.iterm2_shell_integration.fish
end


## Prompt
if it2check
    oh-my-posh init fish --config /Users/rotendahl/Config/oh-my-posh.yaml | source
end

## Alias
alias py="bpython"
alias gh="op plugin run -- gh"

### Abbreviations
abbr --add teli telepresence intercept
abbr --add tree colorls --tree=2
abbr --add rm trash

## Acitvate pyenv
pyenv init - | source

## Set colorscheme
if test $(dark-mode status) = off
    it2setcolor preset 'Solarized Light'
else
    it2setcolor preset Dracula
end
