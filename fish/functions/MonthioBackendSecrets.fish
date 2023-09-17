# Inject env vars from 1Password into the current shell
function MonthioBackendSecrets
    vonthio
    set envFile /Users/rotendahl/.envs/monthio-dotnet.env
    op --account Monthio run --no-masking --env-file=$envFile -- $argv
end
