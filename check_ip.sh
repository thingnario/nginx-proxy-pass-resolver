#!/bin/sh

for container in upstream redis; do
  container_ip="$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${container})"
  echo "${container}'s IP\t: ${container_ip}"
done