# Template Django Rest React

Database: `postgres`

Backend deployment: `gunicorn + nginx`

Frontend deployment: `serve`

# Environment

Make one duplicate of `.env.example` named `.env`, and one of `backend-variables.env.example`
named `backend-variables.env`.

On Linux or Mac, the duplicates can be created by running on the project root:

    cp .env.example .env && cp backend-variables.env.example backend-variables.env

On Windows, the duplicates can be created by running on the project root:

    copy .env.example .env && copy backend-variables.env.example backend-variables.env

Make changes to the values inside the duplicates, if necessary.

# Running

From the project root, simply run:

    docker-compose up

_Docker version tested:_ `20.10.2`

### Pages

_(Some operations may fail if executed before database initialization)._

Rest API:

http://127.0.0.1:8000/

`user: admin`

`password: password123`

# Database initialization

There is a Shell and a Batch script in the project root. They create the database tables and import example data. The
Docker containers need to be running during script execution.

On Linux or Mac, from the project root:

    ./init.sh

On Windows, from the project root:

    init.bat

# References

- https://www.django-rest-framework.org/tutorial/quickstart/
- https://www.django-rest-framework.org/tutorial/1-serialization/
- https://docs.docker.com/compose/django/
- https://hub.docker.com/_/python
- https://docs.docker.com/compose/compose-file/compose-file-v3/
