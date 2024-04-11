# Spark-dbt Demo Project

This project is a demonstration of using Spark and dbt (Data Build Tool) together. It provides a simple Makefile to manage common tasks such as starting Docker containers, cleaning up resources, and generating dbt documentation.

## Overview

The project includes a Makefile with several targets to streamline common development tasks. It also contains sample data and configuration files to get you started with Spark and dbt.

## Usage

### 1. Prerequisites

Before using this project, ensure that you have the following prerequisites installed:

- Docker: https://docs.docker.com/get-docker/
- (mini)conda: https://docs.anaconda.com/free/miniconda/miniconda-install/

### 2. Getting Started

Clone the repository to your local machine:

```bash
git clone https://github.com/mjgolebiewski/dbt_poc.git
cd dbt_poc
```

### 3. Using the Makefile
The Makefile provides several targets to manage your development environment. Here are some common commands:

`make conda-clean`: Creates local dev environment based on environment.yml file.
`make start`: Starts Docker containers.
`make stop`: Stops Docker containers.
`make clean`: Stops Docker containers and removes hive-metastore and spark-warehouse directories.
`make show-docs`: Generates and serves dbt documentation.
Run the commands in your terminal within the project directory.

### 4. Additional Notes
Customize the `environment.yml` file to add or update dependencies as needed.
Modify the `docker-compose.yml` file to adjust Docker container configurations.
Change Spark and Hive versions and configurations in `docker/` according to your needs.