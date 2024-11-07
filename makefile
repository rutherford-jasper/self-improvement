commit-log:
	@read -p "Enter commit message: " msg; \
	git add log.txt; \
	git add ideas.txt; \
	git commit -m "$$msg"; \
	git push

