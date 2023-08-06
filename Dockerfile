# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /FileStreamBot

# Copy the application files into the working directory
COPY . /FileStreamBot

# Install the application dependencies
RUN pip3 install -r requirements.txt
run pip install --upgrade pip

# Define the entry point for the container
CMD ["python", "runserver", "0.0.0.0:8000"]
EXPOSE 8080/tcp 
