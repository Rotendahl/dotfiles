function MonthioBackendSecrets
    set envFile /Users/rotendahl/.envs/monthio-dotnet.env
    op --account Monthio run --no-masking --env-file=$envFile -- $argv
end
