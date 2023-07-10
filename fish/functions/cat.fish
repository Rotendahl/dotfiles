# Picks the right cat command based on the output
# I.e use imgcat if image, bat if interactive shell, otherwise cat
function cat
    if test -t 1
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
