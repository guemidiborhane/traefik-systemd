#!/bin/sh

base_dir=$(dirname $0)

mv -v "$base_dir/traefik.service" "/etc/systemd/system/traefik.service"
systemctl daemon-reload

mkdir -p /etc/traefik
mv -v "$base_dir/config.yaml" "/etc/traefik/config.yaml"
mv -v "$base_dir/conf.d" "/etc/traefik/conf.d"

systemctl enable traefik
systemctl start traefik
