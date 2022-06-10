# Source image
FROM python:3.9.13

# Create a virtual environment for all the Python dependencies
RUN python3 -m venv /opt/venv

# Make sure we use the virtualenv
ENV PATH="/opt/venv/bin:$PATH"

# Change workdir to app directory
WORKDIR /app

# Copy content of src directory into /app dir
COPY src/ .

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Expose application port
EXPOSE 80
ENV STREAMLIT_SERVER_PORT=80

# start the application
CMD [ "streamlit", "run", "app.py"]
