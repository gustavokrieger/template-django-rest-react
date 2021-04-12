# Template Django Rest React

Database: `postgres`

Backend deployment: `gunicorn + nginx`

Frontend deployment: `serve`

# Production mode

### Requirements:

Docker (Version tested: `20.10.5`)

### Setup:

First, open a terminal window and navigate root directory of this project.

Create `.env` files from the `.env.example` files. Run one of the following commands:

On Unix or MacOS, run:

    cp .env.example .env && cp backend-variables.env.example backend-variables.env

On Windows, run:

    copy .env.example .env && copy backend-variables.env.example backend-variables.env

You will need to set values to `SECRET_KEY` and `ALLOWED_HOSTS` in the `backend-variables.env` file. Make changes to the other values if necessary.

### Running:

Run the following commands in the root directory of this project.

Build the Docker containers. Run:

    docker-compose build

Start running the Docker containers in the background. Run:

    docker-compose up -d

Execute the initialization script. Run one of the following commands:

On Unix or MacOS, run:

    ./init.sh

On Windows, run:

    init.bat

_Note: you may need to add execution permission to the script. Check the terminal output after running the command for details._

Open in a browser:

http://127.0.0.1:8000/

http://127.0.0.1:5000/
