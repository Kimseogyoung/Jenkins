FROM jenkins/jenkins:lts-jdk17

USER root

RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-venv \
    # Playwright 시스템 의존성
    libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 \
    libcups2 libdrm2 libxkbcommon0 libxcomposite1 \
    libxdamage1 libxfixes3 libxrandr2 libgbm1 libasound2 \
    && rm -rf /var/lib/apt/lists/*

USER jenkins
