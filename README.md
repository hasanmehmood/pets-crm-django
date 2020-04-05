# pets-crm-django

## Python & Django Version
Python: 3.8.1
Django: 3.0.5

## Running the application

    python manage.py makemigrations
    python manage.py migrate
    python manage.py load_pet_data
    python manage.py runserver

## Running via Docker

    docker build . -t petscrm
    docker run -it -p 8000:8000 petscrm
