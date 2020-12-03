#!/bin/bash
echo "$PASSWD" | vncpasswd -f > /root/.vnc/passwd
echo "starting VNC server ..."
export USER=root
vncserver :1 -geometry 1280x800 -depth 24 && tail -F /root/.vnc/*.log