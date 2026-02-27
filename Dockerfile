FROM n8nio/n8n:1.75.2

USER root

RUN apt-get update && \
    apt-get install -y \
    tesseract-ocr \
    poppler-utils && \
    rm -rf /var/lib/apt/lists/*

USER node
