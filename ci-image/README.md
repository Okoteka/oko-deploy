# CI Docker Image

Этот образ используется в GitLab CI/CD для сборки и деплоя.

## Что внутри
- Python 3.11 (основа для ansible)
- Ansible (для автоматизации конфигурации серверов)
- Docker CLI (для работы с контейнерами и registry)
- SSH client + sshpass (для ansible по SSH)
- Just (удобный task runner)

## Где используется
- В `.gitlab-ci.yml` этот образ используется для job'ов:
  - `build` (сборка приложений/краулеров)
  - `deploy` (ansible + docker compose)
