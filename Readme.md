# Djandock

This is a simple docker compose service with nginx and postgres for django which is inspired by [laradock](https://github.com/laradock/laradock)

## Usage

1. Edit configuration

```bash
cp .env.example .nev
```

2. Make sure ```requirements.txt``` exists in the project directory

3. If the project has its own uwsgi settings, place the uwsgi.ini in theproject directory, otherwise, the default setting in ```workspace/uwsgi.ini``` will be applied

4. Edit the project conf for nginx

```bash
cp nginx/sites/django.conf.example nginx/sites/django.conf
```

5. Start the service

```bash
docker compose up -d
```

You can access you website at ```localhost```.

- If you would like to use django built-in server instead of nginx in development

```bash
docker compose up -d workspace postgres
docker compose exec workspace python var/www/manage.py runserver 0.0.0.0:8000
```

You can access your website at ```localhost:8000```.

When container created, the first request will failed due to pip package installation. It will served as expected after resending another request in serveral seconds.  

## Connect to PostgreSQL

Set host to ```postgres```
