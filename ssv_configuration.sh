#! /bin/bash

# Password file
echo "<MY_OPERATOR_PASSWORD>" >> password

#Key Pair generation and encryption
docker run --name ssv-node-key-generation -v <PATH_TO_PASSWORD>:/password -it "ssvlabs/ssv-node:latest" /go/bin/ssvnode generate-operator-keys --password-file=password && docker cp ssv-node-key-generation:/encrypted_private_key.json ./encrypted_private_key.json && docker rm ssv-node-key-generation