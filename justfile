install:
	@echo "Installing ansible-galaxy dependencies..."
	@ansible-galaxy install -r requirements.yaml
	@echo "Dependencies installed."

vault:
	@ansible-vault edit secrets.yaml

run:
	@ansible-playbook --inventory inventory.ini playbook.yaml

clean:
    @rm -rf .roles
