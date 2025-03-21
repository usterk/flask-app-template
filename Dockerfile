FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Flask application port
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
