FROM debian:latest

# Install Python and pip
RUN apt update && apt upgrade -y && \
    apt install -y python3 python3-pip git curl

# Set working directory inside container
WORKDIR /app

# Copy requirements first (important!)
COPY requirements.txt .

# Upgrade pip safely
RUN python3 -m pip install --break-system-packages -U pip

# Install Python dependencies
RUN python3 -m pip install -r requirements.txt

# Copy the rest of your app code
COPY . .

# Command to run your app (change this to your actual entry script)
CMD ["python3", "RizOelLXSpam"]
