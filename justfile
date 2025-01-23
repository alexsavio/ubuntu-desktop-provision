deps-post:
    ansible-galaxy collection install -r requirements.yml

clean: clean-ansible

clean-ansible:
    rm -fr playbook.retry
    rm -fr .ansible_cache/

thinkcentre:
    ./playbook.yml -l thinkcentre
