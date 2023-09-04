# I want to write a fully functional Google Cloud Run compatible Dockerfile for this stremlit app
FROM python:3.11

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install -r requirements.txt

# Make port 8501 available to the world outside this container
EXPOSE 8080

# Run app.py with streamlit command when the container launches with --server.port 8080
CMD ["streamlit", "run", "app.py", "--server.port", "8080"]