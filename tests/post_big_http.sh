#!/bin/sh
echo "Running test on $OSTYPE"
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias date='gdate'
fi
dt=`date +%s%6N`
curl 'http://localhost:8080/raw/test/image' -H "Etag: \"$dt\"" --data-binary @pic.jpg
