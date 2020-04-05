FROM python:3.7-alpine
LABEL pets crm django
WORKDIR /app
COPY . .
RUN python3 -m venv venv3
RUN . venv3/bin/activate
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
RUN python manage.py load_pet_data
CMD python manage.py runserver 0.0.0.0:8000
