setup:
	python -m venv ~/.capstone

	#activate the virtualenv
	source ~/.capstone/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v2.1.0/hadolint-Linux-x86_64  &&\
    chmod +x ./hadolint

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

test:
	# flask run
	pytest
	

all: install lint