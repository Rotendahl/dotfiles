# Do a google search on argv
function engine
    set query (string join ' ' (string escape --style  url $argv))
    set url (string join '' 'https://portal.monthio.com/budget-admin/budget-engine/' $query '/dashboard')
    open $url
end
