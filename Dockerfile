FROM n8nio/n8n:latest-debian

USER root

RUN apt-get update && \
    apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-eng \
    poppler-utils && \
    rm -rf /var/lib/apt/lists/*

USER node
