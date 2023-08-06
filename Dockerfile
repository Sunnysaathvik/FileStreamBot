# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /FileStreamBot

# Copy the application files into the working directory
COPY . requirements.txt

# Install the application dependencies
RUN git clone https://github.com/DeekshithSH/FileStreamBot
RUN python3 -m venv ./venv
COPY . ./venv/bin/activate
RUN pip3 install -r requirements.txt
RUN python3 -m WebStreamer
run pip install --upgrade pip

# Define the entry point for the container
CMD ["python", "-m", "webstreamer" ]
EXPOSE 8080/tcp 
