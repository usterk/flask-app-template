# Flask Application Template

This is a Flask application template with Docker configuration. The project provides a ready-to-use setup for quick deployment and testing of web applications.

## How to Use

1. Clone the repository:
   ```
   git clone git@github.com:usterk/flask-app-template.git
   cd flask-app-template
   ```

2. Run the application using the script:
   ```
   ./run.sh [app-name]
   ```
   If you don't provide a name, the default value "default-app" will be used.

3. The application will be available at: http://localhost:5000

## What it Does

- Provides a configured Flask environment for creating web applications
- Automatically manages Docker containers (stopping, starting, rebuilding when changes are detected)
- Enables rapid prototyping
- Supports development mode with hot-reloading

## Technical Specifications

- Python 3.9
- Flask 2.0+
- Docker
- Hot-reload in development mode
- Port mapping (default 5000)

To get started, modify the `app.py` file according to your needs.
