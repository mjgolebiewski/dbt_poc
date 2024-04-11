# Help message
.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  conda-clean         Cleans the conda environment and updates dependencies from environment.yml"
	@echo "  start               Starts Docker containers"
	@echo "  stop                Stops Docker containers"
	@echo "  clean               Stops Docker containers and removes hive-metastore and spark-warehouse directories"
	@echo "  show-docs           Generates and serves dbt documentation"

# Cleans the conda environment and updates dependencies from environment.yml
.PHONY: conda-clean
conda-clean:
	@echo "Cleaning conda environment and updating dependencies..."
	conda env update -f environment.yml --prune

# Starts Docker containers
.PHONY: start
start:
	@echo "Starting Docker containers..."
	docker compose up -d

# Stops Docker containers
.PHONY: stop
stop:
	@echo "Stopping Docker containers..."
	docker compose down

# Stops Docker containers and removes hive-metastore and spark-warehouse directories
.PHONY: clean
clean:
	@echo "Stopping Docker containers..."
	docker compose down
	@echo "Removing hive-metastore and spark-warehouse directories..."
	rm -rf .hive-metastore .spark-warehouse

# Generates and serves dbt documentation
.PHONY: show-docs
show-docs:
	@echo "Generating and serving dbt documentation..."
	dbt docs generate && dbt docs serve
