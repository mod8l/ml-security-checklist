.PHONY: lint
lint: node_modules/.bin/markdownlint
	node_modules/.bin/markdownlint '**/*.md'

node_modules/.bin/markdownlint: package.json
	npm install
