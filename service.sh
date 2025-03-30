#!/system/bin/sh
# Enable ADB over Wi-Fi persistently

# Set the port for ADB
setprop service.adb.tcp.port 5555

# Restart the adbd daemon
stop adbd
start adbd

# Log output (optional)
echo "[ADB-WIFI] Boot script executed at $(date)" >> /data/local/tmp/adbwifi.log