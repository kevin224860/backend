# Dockerfile
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the necessary files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
