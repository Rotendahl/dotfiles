# Run a shortcut from the command line
function task-template
    if test $argv[1] = daily
        shortcuts run 'Daily Checklist'
    else if test $argv[1] = weekly
        shortcuts run 'Weekly Review'
    else if test $argv[1] = work
        shortcuts run 'Work Checklist'
    else if test $argv[1] = monthly
        shortcuts run 'Monthly Checklist'
    else if test $argv[1] = completed
        shortcuts run 'Daily Theme Completed'
    else
        echo "Invalid argument"
    end
end
