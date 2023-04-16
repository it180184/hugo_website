#!/usr/bin/env bash

hugo

KNIFE_POD=""
findPod() {
    KNIFE_POD=$(kubectl -n student-f-ettinger get pods|grep -i Running|grep knife|cut -d\  -f 1)
}
waitForPod() {
    local pod=""
    while [ "$KNIFE_POD." == "." ]; do
        findPod $1
        sleep 1
    done;
    echo "pod $KNIFE_POD ready"
}
waitForPod knife

echo "copy to student-f-ettinger..."
kubectl -n student-f-ettinger exec $KNIFE_POD -- rm -rf /srv/demo /srv/public
kubectl -n student-f-ettinger cp ./public $KNIFE_POD:/srv/public
kubectl -n student-f-ettinger exec $KNIFE_POD -- ls /srv/
kubectl -n student-f-ettinger exec $KNIFE_POD -- mv /srv/public /srv/demo