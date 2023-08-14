# Do a github code search for monthio code
function moogle
    set query (string join ' ' (string escape --style  url $argv))
    echo $query
    set url (string join '' 'https://github.com/search?type=code&q=' $query '+user%3Amonthio')
    open $url
end
