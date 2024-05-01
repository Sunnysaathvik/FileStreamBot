# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /FileStreamBot/app/

# Copy the application files into the working directory
COPY . /FileStreamBot/app/

# Install the application dependencies
RUN git clone https://github.com/Sunnysaathvik/FileStreamBot
RUN pip3 install -r requirements.txt
RUN python3 -m WebStreamer
run pip install --upgrade pip

# Define the entry point for the container
CMD ["python", "-m", "webstreamer" ]
