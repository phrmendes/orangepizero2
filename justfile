install_requirements:
	@echo "Installing ansible-galaxy dependencies..."
	@ansible-galaxy install -r requirements.yaml
	@echo "Dependencies installed."

update_requirements:
	@echo "Updating ansible-galaxy dependencies..."
	@ansible-galaxy install -r requirements.yaml --force
	@echo "Dependencies updated."

open_vault:
	@ansible-vault edit secrets.yaml

run args="":
	@ansible-playbook --inventory inventory.ini playbook.yaml {{args}}

clean:
    @rm -rf .roles
