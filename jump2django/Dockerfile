# ./Dockerfile
FROM python:3
WORKDIR /usr/src/app

## Install packages
COPY requirements.txt ./
RUN pip install -r requirements.txt

## Copy all src files
COPY . .

# set env value to production setting
ENV DJANGO_SETTINGS_MODULE=config.settings.prod

# collect static files
RUN python manage.py collectstatic --skip-checks

# gunicorn dist
## Run the app on the port 8000
# EXPOSE 8000
# CMD ["gunicorn", "--bind", "0:8000", "config.wsgi:application"]
## Run the app through socket
CMD ["gunicorn", "--bind", "unix:/tmp/gunicorn.sock", "config.wsgi:application"]