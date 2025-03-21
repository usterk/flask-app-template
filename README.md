# Flask Application Template

This is a Flask application template with Docker configuration. The project provides a ready-to-use setup for quick deployment and testing of web applications.

## Step by Step

The main purpose of this repository is to enable rapid web application development. Follow these steps to create your application:

1. **Prepare the environment:**
   - Make sure you have Docker installed on your system (Linux/Mac):
     [Docker Installation Guide](https://docs.docker.com/get-docker/)
   - Clone the repository:
     ```
     git clone git@github.com:usterk/flask-app-template.git
     cd flask-app-template
     ```

2. **Develop application specifications:**
   - Open the `docs/prompt_en.md` file (English) or `docs/prompt_pl.md` (Polish)
     - English: [prompt_en.md on GitHub](https://github.com/usterk/flask-app-template/blob/master/docs/prompt_en.md)
     - Polish: [prompt_pl.md on GitHub](https://github.com/usterk/flask-app-template/blob/master/docs/prompt_pl.md)
   - Copy the entire content of the file to a GPT chat
   - Answer all the auxiliary questions asked by the AI
   - After completing the dialogue, select the "generate" option to receive a complete prompt

3. **Generate code:**
   - Paste the generated prompt into a new conversation with GitHub Copilot (or another coding agent)
   - We recommend using GitHub Copilot with Claude 3.7 Sonnet Thinking model
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
