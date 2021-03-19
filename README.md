# For run all Ecosystem Application PHP, Mysql, Nginx and Redis 
## Use docker-composr
```bash
docker-compose up --build
```

## For run only image laravel run image in dockerhub 
### https://hub.docker.com/r/railsonluna/laravel
```bash
docker run -p 8000:8000 -d --name laravel railsonluna/laravel

docker exec -it laravel php artisan serve --host=0.0.0.0
```

### Acesse the system in http://localhost:8000 or http://127.0.0.1:8000/

