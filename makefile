.PHONY: commit-log

REPO_DIR := $(realpath $(dir $(MAKEFILE_LIST)))

commit-log:
	@read -p "Enter commit message: " msg; \
	git -C $(REPO_DIR) add log.txt; \
	git -C $(REPO_DIR) add ideas.txt; \
	git -C $(REPO_DIR) add makefile; \
	git -C $(REPO_DIR) commit -m "$$msg"; \
	git -C $(REPO_DIR) push
