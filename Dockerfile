# Dockerfile
FROM python:3.11-slim

# Устанавливаем зависимости
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем ansible
RUN pip install --no-cache-dir ansible

# Устанавливаем just
RUN curl -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin

# Проверка версий
RUN ansible --version && just --version
