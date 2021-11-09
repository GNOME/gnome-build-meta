#!/bin/bash

# Delete machine on $OPENQA_HOST.

set -eu

machine_id=$1

openqa-cli api --apikey $OPENQA_API_KEY --apisecret $OPENQA_API_SECRET \
    --host $OPENQA_HOST -X DELETE machines/${machine_id} | tee --append openqa.log
