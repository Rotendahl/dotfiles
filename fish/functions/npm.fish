# Inject npm env vars from 1Password into the current shell
function npm
    set envFile /Users/rotendahl/.envs/npm.env
    op --account Monthio run --no-masking --env-file=$envFile -- npm $argv
end
