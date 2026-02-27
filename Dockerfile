FROM node:20-bullseye

# Install OCR dependencies
RUN apt-get update && \
    apt-get install -y \
    tesseract-ocr \
    poppler-utils && \
    rm -rf /var/lib/apt/lists/*

# Install n8n globally
RUN npm install -g n8n

USER node

ENV N8N_PORT=10000
EXPOSE 10000

CMD ["n8n"]
