# list of all justfile recipes
default:
    just --list --unsorted

# configure server
configure-server:
    ansible-playbook -i ansible/inventory.yaml ansible/playbooks/configure-server.yml
