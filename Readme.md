# Djandock

This is a simple docker compose service for django which is inspired by [laradock](https://github.com/laradock/laradock)

## Usage

1. Edit configuration

```bash
cp .env.example .nev
```

2. Make sure requirements.txt exists in the project directory

3. If the project has its own uwsgi settings, place the uwsgi.ini in theproject directory, otherwise, the default setting in ```workspace/uwsgi.ini``` will be applied

4. Edit the project conf for nginx

```bash
cp nginx/sites/django.conf.example nginx/sites/django.conf
```

5. Start the service

```bash
docker compose up -d
```

- If you would like to use django buildin server instead of nginx in development

```bash
docker compose up -d workspace postgres pgAdmin
docker compose exec workspace python manage.py runserver 0.0.0.0:80
```

6. Connect on ```localhost```
