composer create-project laravel/laravel:^9.0 laravel-project-name
chmod -R 777 laravel-project-name

sudo cp -R create-docker/docker laravel-project-name/
sudo cp create-docker/docker-compose.yml laravel-project-name/
sudo cp create-docker/.env laravel-project-name/
sudo cp create-docker/.env1 laravel-project-name/

cd laravel-project-name
php artisan key:generate
php artisan config:cache

docker-compose build
docker-compose up -d
docker ps

sudo nano .env   # in .env  rewrite   DB_HOST=127.0.0.1:33061

npm install

php artisan make:model Test --all
