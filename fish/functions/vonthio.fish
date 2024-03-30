# Enables the VPN connection in macOs prefs called Vonthio
function vonthio
    echo "Connecting telepresence..."
    telepresence connect
    if test $(networksetup -showpppoestatus Vonthio) != connected
        networksetup -connectpppoeservice Vonthio
        confetti
    end
    echo "Vonthio Status:" $(networksetup -showpppoestatus Vonthio)
end
