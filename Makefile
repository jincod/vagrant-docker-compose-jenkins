deploy:
	ansible-galaxy install -p ./roles -r requirements.yml
	ansible-playbook playbook.yml -i inventory --ask-become-pass