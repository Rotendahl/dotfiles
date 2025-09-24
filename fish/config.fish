################################################################################
######################## Bad-ass fish config file! #############################
################################################################################

if status is-interactive
    source {$HOME}/.iterm2_shell_integration.fish
    if test it2check
        ## Sends prompt to iterm if iterm
        functions iterm2_prompt_mark1; and iterm2_prompt_mark
    end

    ## Prompt
    if test -e {$HOME}/DotFiles/oh-my-posh.yaml
        oh-my-posh init fish --config {$HOME}/DotFiles/oh-my-posh.yaml | source
    end

    ## Get 1password plugins
    if test -e {$HOME}/.config/op/plugins.sh
        source {$HOME}/.config/op/plugins.sh
    end
end

### Generate dynamic completions
helm completion fish >/Users/rotendahl/.cache/fish/generated_completions/helm.fish
kubectl completion fish >/Users/rotendahl/.cache/fish/generated_completions/kubectl.fish
gh completion -s fish >/Users/rotendahl/.cache/fish/generated_completions/gh.fish
telepresence completion fish >/Users/rotendahl/.cache/fish/generated_completions/telepresence.fish
mirrord completions fish >/Users/rotendahl/.cache/fish/generated_completions/mirrord.fish
gh completion -s fish >/Users/rotendahl/.cache/fish/generated_completions/gh.fish

### Abbreviations
abbr --add teli telepresence intercept
abbr --add tree colorls --tree=2
abbr --add rm trash
abbr --add reload source ~/.config/fish/config.fish
abbr --add curl curlie

### Tele presence abbreviations
abbr --add tele-budget telepresence intercept budget-app --port 5006:80 --replace
abbr --add tele-enricher telepresence intercept transaction-enrichment-app --port 5010:80 --replace
abbr --add force-push git push --force-with-lease

pyenv init - fish | source
