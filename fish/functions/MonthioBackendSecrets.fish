# Inject env vars from 1Password into the current shell
function MonthioBackendSecrets
    set envFileName ".envrc"
    if test ! -e $envFileName
        printf "%s\n" "No $envFileName file found. Please create one with the following format:
        AzureKeyVault__ClientId=\"op://some-val\"
        AzureKeyVault__ClientSecret=\"op://some-other-val\"
        "
        return 1
    end

    vonthio
    op --account Monthio run --no-masking -- $argv
end
