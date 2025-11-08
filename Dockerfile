# Using the official Python 3.10 image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Open the port for FastAPI
EXPOSE 8000

# Command to launch the application
CMD ["python", "main.py"]