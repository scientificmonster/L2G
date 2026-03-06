# Base image: Node 20 on Debian Bookworm (stable, good library support)
FROM node:20-bookworm

# Install system dependencies required by Puppeteer/Chromium
# https://pptr.dev/troubleshooting#chrome-doesnt-launch-on-linux
RUN apt-get update && apt-get install -y \
    ca-certificates \
    fonts-liberation \
    libappindicator3-1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libc6 \
    libcairo2 \
    libcups2 \
    libdbus-1-3 \
    libexpat1 \
    libfontconfig1 \
    libgbm1 \
    libgcc1 \
    libglib2.0-0 \
    libgtk-3-0 \
    libnspr4 \
    libnss3 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libstdc++6 \
    libx11-6 \
    libx11-xcb1 \
    libxcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxrender1 \
    libxss1 \
    libxtst6 \
    lsb-release \
    wget \
    xdg-utils \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Switch to the non-root 'node' user that comes with the node image
# This is a best practice for security and avoids permission issues with mounted volumes on Linux
USER node

# We don't COPY package.json here or run npm install during build
# because we want to mount the local directory to /app and run npm install
# inside the container, so developers can easily add/remove packages.
