# ./Dockerfile
FROM python:3
WORKDIR /usr/src/app

## Install packages
COPY requirements.txt ./
RUN pip install -r requirements.txt

## Copy all src files
COPY . .

## Run the app on the port 8000
EXPOSE 8000

# gunicorn dist
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "config.wsgi:application"]