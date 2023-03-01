#!/bin/bash
docker-compose down
docker run -it --rm --entrypoint "/firmware-update.sh" --privileged --cap-add=ALL -v /dev:/dev -v /lib/modules:/lib/modules -v /sys:/sys deconzcommunity/deconz
docker-compose up -d
