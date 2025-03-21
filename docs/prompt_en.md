# Meta-prompt: Copy everything below and paste it into GPT chat. This will guide you through the process of creating specifications for an AI coding agent

The purpose of this process is to create a complete and precise prompt describing software, which will then be used by another AI to generate actual code. The description will be created together with the user **in canvas**, but **the canvas will be created only after collecting all answers to the questions**. Each part of the prompt will be developed based on a set of ordered questions to ensure it contains all key information.

The application being created will use a ready-made project template based on **Flask** with Docker: [usterk/flask-app-template](https://github.com/usterk/flask-app-template). The prompt must be prepared so that the project is compatible with this structure and works immediately when launched using `./run.sh`.

---

### 🔧 Format of the final prompt (output):

```
# Project name
[Brief description of the project's purpose – one sentence.]

## Application type and platform
Web application (Flask + Docker), run locally at http://localhost:5000

## Users and roles
[Lists of expected user types and their roles, e.g., Administrator, User, Guest.]
- If possible, design a public interface accessible without logging in

## Main features and use cases
[Lists of main functionalities and examples of user interaction with the system.]

## User interface
- The application opens by default on the home page available at `/`
- If navigation is needed, use a hamburger icon on the left side and a slide-out side menu with options
- If interactive windows or components are required (e.g., editors, forms, dynamic views), they are implemented in JS and occupy a maximum of 90% width and 90% height of the screen
- The interface is modern, visually attractive, and clean (minimalist, responsive design)

## Interface language
Polish (unless the user explicitly specifies another language)

## Technologies and libraries
- Python 3.9
- Flask 2.0+
- Docker (with `run.sh` to run the application)
- HTML (Jinja2 templates in the `templates/` directory)
- CSS/JS (static files in the `static/` directory)

## Data models and API
[Description of data to be stored, processed, or retrieved, and any APIs.]

## External integrations
[External services to integrate, e.g., Stripe, OpenAI API, Firebase, etc.]

## Credentials and security
[Where will access data, API keys, user logins and passwords be stored? Will they be encrypted? Should they be kept in an .env file, database, or will an external service be used?]

## Architecture and modularity
- The project must conform to the structure of the `flask-app-template`
- Code should be divided into small, independent components (modules, classes, libraries), each in a separate file
- Each component must include:
  - name,
  - detailed description of responsibilities and functionalities,
  - description of the public interface (e.g., available methods, input/output parameters),
  - dependencies on other components (if any)
- The project should be organized to allow modification of individual components without the need to load the entire codebase
- All variable names, classes, functions, and comments in the code must be in English

## Additional notes
- The `app.py` file should contain the main application logic and route definitions
- Configurations should be moved to `config/settings.py` if they are larger
- Views should use the Jinja2 templating system (`templates/` directory)
- All static assets (CSS, JS, images) should be placed in `static/`
```

---

### 🧭 Process of creating the prompt — questions for the user:

1. **What is your project called? Describe its purpose in one sentence.**
2. **What are the key features and use cases?**
3. **Who are the users and what roles will they have? Do you want the public interface to be accessible without logging in?**
4. **What data needs to be stored or processed? What data models are needed?**
5. **Does the project require integration with external services? Which ones?**
6. **Where and how will credentials be stored (e.g., logins, passwords, API keys)?**
7. **How do you plan to divide the project into modules or components?**
8. **Are there other constraints, assumptions, or important details to note?**
9. **Are there any additional helpful questions that should be asked now to clarify the project?**

---

### 🔄 Final step:

After collecting all the answers, the meta-prompt says:

"
Important: Before continuing, please switch to a reasoning AI model. Further interactions will be based on thoughtful responses.

Is that everything you would like to add? If so, choose one of the following options:

- **generate** – I will generate a complete prompt describing your software project and create a canvas automatically
- **Think and ask me additional questions** – I will analyze your answers and ask supplementary questions that will clarify the project"**

The AI then generates a canvas that is ready to be used by another AI to generate code.
