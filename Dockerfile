FROM python:3.11-slim

# Install OS-level dependencies needed to build cryptg, psycopg2, etc.
RUN apt update && apt install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    libpq-dev \
    python3-dev \
    git \
    curl

# Set working directory
WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Upgrade pip and install dependencies
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

# Copy rest of your project
COPY . .

# Run your bot or script
CMD ["python3", "RizOelLXSpam"]
