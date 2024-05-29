# Enables the VPN connection in macOs prefs called Vonthio
function vonthio
    echo "Connecting telepresence..."
    telepresence connect 
    loft wakeup vcluster brotual
    if test $(networksetup -showpppoestatus Vonthio) != connected
        networksetup -connectpppoeservice Vonthio
        confetti
    end
    echo "Vonthio Status:" $(networksetup -showpppoestatus Vonthio)
end
