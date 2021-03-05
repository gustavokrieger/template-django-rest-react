import os


def get_list_variable(key):
    variable = os.getenv(key)
    if not variable:
        return []
    return [item.strip() for item in variable.split(',')]


POSTGRES_DB = os.getenv('POSTGRES_DB')
POSTGRES_USER = os.getenv('POSTGRES_USER')
POSTGRES_PASSWORD = os.getenv('POSTGRES_PASSWORD')

SECRET_KEY = os.getenv('SECRET_KEY')
DEBUG = os.getenv('DEBUG')
ALLOWED_HOSTS = get_list_variable('ALLOWED_HOSTS')
DATABASE_HOST = os.getenv('DATABASE_HOST')
TIME_ZONE = os.getenv('TIME_ZONE')
