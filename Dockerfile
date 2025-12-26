
# Use Official Python Image
FROM python:3.10-slim

# Set Working Directory
WORKDIR /app

# Copy App Files
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose Port for Running Application
EXPOSE 8080

# Run Application
CMD ['python', 'app.py']
