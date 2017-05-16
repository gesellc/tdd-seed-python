SHELL = /bin/bash

all: install coverage

install:
	( \
	virtualenv -p python3 venv; \
	source venv/bin/activate; \
	pip install -r requirements.txt; \
	)

test:
	( \
	source venv/bin/activate; \
	python -m unittest MyApp_test.py; \
	)

coverage:
	( \
	source venv/bin/activate; \
	coverage run -m unittest MyApp_test.py; \
	coverage report -m; \
	coverage html; \
	)
