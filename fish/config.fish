################################################################################
######################## Bad-ass fish config file! #############################
################################################################################

if test -e {$HOME}/.iterm2_shell_integration.fish
    source {$HOME}/.iterm2_shell_integration.fish
end

# Paths
set PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH
set PATH $HOME/.dotnet/tools $PATH
set PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH
set PATH /opt/homebrew/opt/ruby/bin $PATH
set GEMPATH (string join '/bin:' $(string split ':' $(gem environment gempath)))/bin
set PATH $GEMPATH $PATH

## Variables
set VISUAL vim
set EDITOR $VISUAL
set SSH_AUTH_SOCK /Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock
set PAGER bat
set PYENV_ROOT $HOME/.pyenv
set fish_user_paths $PYENV_ROOT/bin $fish_user_paths
set DOTNET_WATCH_RESTART_ON_RUDE_EDIT 1
### Work Variables
set MONTHIO_VALUT ZICVAAFIWRBTHEEFSG3KXXATRI
set SENTRY_DSN ''
set CLOUD_DEVELOPMENT_NAMESPACE brotual

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
