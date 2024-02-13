#!/bin/sh

export NEW_RELIC_API_KEY=$(cat  /run/secrets/NEW_RELIC_API_KEY | xargs) 
export NR_LOG_LEVEL=$(cat  /run/secrets/NR_LOG_LEVEL | xargs) 
export NR_REGION=$(cat  /run/secrets/NR_REGION | xargs) 
export NR_ACCOUNT_ID=$(cat  /run/secrets/NR_ACCOUNT_ID | xargs) 

if "$@" == ""; then
  exec ktranslate
else
  exec ktranslate "$@"
fi



# gpg --decrypt --passphrase="${PASSWORD}" \
#     /path/to/encrypted/file > /path/to/unencrypted/file
# i.e. quotes should be used in order to the environment variable to be properly transformed to text.

# docker inspect -f '{{range $index, $value := .Config.Env}}{{$value}} {{end}}' ktranslate-1
# docker inspect ktranslate-1 | jq '.[] | .Config.Env'
