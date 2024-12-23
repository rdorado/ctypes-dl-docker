FROM alpine:latest

# Set the working directory in the container
WORKDIR /app

# Create directory for binaries
RUN mkdir /app/bin

# Install necessary dependencies
RUN apk update && apk upgrade && apk add \
    g++ \
    cmake \
	make \
    python3

# Copy the source code into the container
COPY src /app/src

# Compile the sources using cmake, results will 
RUN cd /app/bin;  \
    cmake ../src/cpp; make

# Run the test to load the compiled library
CMD ["python3", "./src/python/main.py"]