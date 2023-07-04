function ls
    if test -t 1 # Output is to shell
        set color light
        if test $(dark-mode status) = on
            set color dark
        end
        colorls -A --$color $argv
    else
        command ls $argv
    end
end
