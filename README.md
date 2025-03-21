# Flask Application Template

This is a Flask application template with Docker configuration. The project provides a ready-to-use setup for quick deployment and testing of web applications.

## Rapid Application Development

The main purpose of this repository is to enable rapid web application development. To get started:

1. Make sure you have Docker installed on your system (Linux/Mac):
   - [Docker Installation Guide](https://docs.docker.com/get-docker/)

2. After cloning the repository, go to the `docs/prompt.md` file

3. Copy the contents of this file and paste it into a GPT chat to generate a prompt for the coding agent (we recommend using GitHub Copilot with Claude 3.7 Sonnet Thinking model)

4. The agent will generate complete application code based on your requirements, which will work immediately with this template

## Step by Step: How to Create an Application

1. **Prepare the environment:**
   ```
   git clone git@github.com:usterk/flask-app-template.git
   cd flask-app-template
   ```

2. **Develop application specifications:**
   - Open the `docs/prompt.md` file and familiarize yourself with the prompt format
   - Copy the entire content of this file to GPT chat
   - Answer all the auxiliary questions asked by the AI
   - After completing the dialogue, select the "generate" option to receive a complete prompt

3. **Generate code:**
   - Paste the generated prompt into a new conversation with GitHub Copilot (or another coding agent)
   - The AI will generate complete application code compatible with this template structure

4. **Run the application:**
   - Copy the generated files to the appropriate locations in the project
   - Run the application with the command:
     ```
     ./run.sh app-name
     ```
   - Open a browser at: http://localhost:5000

5. **Iterative improvements:**
   - Modify code in real-time - changes are automatically loaded
   - If needed, go back to the coding agent for additional features

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
