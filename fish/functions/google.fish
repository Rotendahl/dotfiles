# Do a google search on argv
function google
    set query (string join ' ' (string escape --style  url $argv))
    echo $query
    set url (string join '' 'https://www.google.com/search?q=' $query)
    open $url
end
