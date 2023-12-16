# Reset all deployments to latest
function resetDeployments
    set apps $(kubectl get deployments.apps -o name | sed 's/deployment.apps\///g')
    for app in $apps
        kubectl set image deployment/$app $app=monthioacr.azurecr.io/$app:latest
        if test $status -eq 0
            echo "$app set to latest"
        else
            echo "Failed setting $app to latest"
        end
    end
end
