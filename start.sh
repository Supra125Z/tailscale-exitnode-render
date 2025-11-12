#!/bin/bash

# Jalankan tailscaled di background
/usr/sbin/tailscaled &

# Tunggu sebentar agar daemon aktif
sleep 5

# Jalankan tailscale dengan key kamu (nanti di Render)
tailscale up --authkey ${TAILSCALE_AUTH_KEY} --advertise-exit-node --hostname render-exitnode

# Biar container gak mati
tail -f /dev/null
