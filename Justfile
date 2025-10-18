set dotenv-load := true

set shell := ["/bin/bash", "-c"]

# list of all justfile recipes
default:
    just --list --unsorted

# run command in local docker image
local command:
    docker run --rm -it \
    -v ${MOUNT} -w /app \
    -e SSH_PRIVATE_KEY \
    ${IMAGE} \
    bash -c 'mkdir -p ~/.ssh && \
    echo "${SSH_PRIVATE_KEY}" > ~/.ssh/id_ed25519 && \
    chmod 600 ~/.ssh/id_ed25519 && \
    just {{command}}'

# configure server
configure-server:
    ansible-playbook -i ansible/inventory.yaml ansible/playbooks/configure-server.yaml

