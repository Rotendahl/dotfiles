# Enables the VPN connection in macOs prefs called Vonthio
function vonthio
    if test $(networksetup -showpppoestatus Vonthio) != connected
        networksetup -connectpppoeservice Vonthio
    end
    echo "Vonthio Status:" $(networksetup -showpppoestatus Vonthio)
end
