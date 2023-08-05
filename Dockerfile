# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /FileStreamBot

# Copy the application files into the working directory
COPY . /FileStreamBot

# Install the application dependencies
RUN pip3 install -r requirements.txt
RUN git clone https://github.com/DeekshithSH/FileStreamBot
cd FileStreamBot
RUN python3 -m venv ./venv
COPY . ./venv/bin/activate
RUN python3 -m WebStreamer

# Define the entry point for the container
CMD ["python", "runserver", "0.0.0.0:8000"]
