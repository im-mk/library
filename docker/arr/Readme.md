# Asustor

Modify these to work with asustor

vi /share/Docker/qbittorrent/qBittorrent/qBittorrent.conf

In vi:
Press:
i

to enter insert mode.

Find the [Preferences] section and add these lines:
WebUI\Port=8080
WebUI\HostHeaderValidation=false
WebUI\CSRFProtection=false

Press Esc
Save and exit:
:wq