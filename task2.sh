#!/bin/bash

# Create a Dockerfile with the specified content
echo "FROM python:3" > Dockerfile
echo "RUN pip3 install django" >> Dockerfile
echo "COPY . ." >> Dockerfile
echo "RUN python manage.py migrate" >> Dockerfile
echo 'CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]' >> Dockerfile

# Build the Docker image
sudo docker build . -t todo-app

# Run the Docker container
container_id=$(sudo docker run -p 8001:8001 todo-app)

# Display the Container ID
echo "Docker container ID: $container_id"

