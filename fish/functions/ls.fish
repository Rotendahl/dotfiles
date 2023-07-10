# Use colorls with correct colors when output is to shell
function ls
    if test -t 1
        set color light
        if test $(dark-mode status) = on
            set color dark
        end
        colorls -A --$color $argv --gs
    else
        command ls $argv
    end
end
