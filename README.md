# SSV node

The docker-compose.yml file starts a SSV node with Besu and Teku clients. 

## Installation

Configure the network, create data directories and generate JWT secret can be done executing:
'''
./initial_configuration.sh
'''

Generate SSV operator keys by running:
'''
./ssv_configuration.sh
'''

Start or update the services executing:
'''
./start.sh
'''