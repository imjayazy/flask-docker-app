# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Make the container's port 5000 available to the outside world
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
