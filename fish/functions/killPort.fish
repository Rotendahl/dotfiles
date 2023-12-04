# Kills any service running on the given port
function killPort
    kill -9 $(lsof -ti tcp:$argv[1])
end
