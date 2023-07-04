function cat
    if test -t 1 # Output is to shell
        set nr_args count length $argv
        set img_mathces $(string match -ri '.*\.(png|jpg|jpeg)' $argv[1] | count)
        if test $img_mathces -ne 0
            imgcat $argv
        else
            bat $argv
        end
    else
        command cat $argv
    end
end
