FROM python:3.11-slim

# Install necessary system packages
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

# Copy and install dependencies
COPY requirements.txt .
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

# Copy project files
COPY . .

# Set the command to run your bot
CMD ["python3", "-m", "RiZoeLXSpam"]
