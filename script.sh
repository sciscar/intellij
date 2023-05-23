#/bin/bash
xhost +local:
xhost +si:localuser:root
docker run --security-opt apparmor:unconfined --name examenIntellij --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" rycus86/intellij-idea
