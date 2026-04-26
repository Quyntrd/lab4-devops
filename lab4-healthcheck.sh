#!/usr/bin/env bash
if curl -s -o /dev/null -w "%{http_code}" http://localhost:8000/ | grep -q 200; then
    echo "OK: Service is healthy"
    exit 0
else
    echo "FAIL: Service returned non-200 status"
    exit 1
fi
