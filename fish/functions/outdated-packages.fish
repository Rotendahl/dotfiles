function outdated-packages
    echo "Updating brew"
    brew update

    echo Brews
    brew outdated
    echo \nNPM

    npm -g outdated

    echo \nRuby Gems
    gem outdated

    echo \nGithub
    gh extension upgrade --all --dry-run


    echo \nPip
    pip list --outdated
end
