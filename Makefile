.PHONY: install

install:
	python3 -m venv venv
	venv/bin/pip install --upgrade pip
	venv/bin/pip install -r requirements.txt
	echo "source venv/bin/activate" > activate_venv.sh
	echo "Virtual environment created and dependencies installed. Run 'source .venv/bin/activate' to activate."