
# Project 219


## Installation

To install this project run

```bash
docker compose up --build -d
```

```bash
make install
```

Complete `server/.env` `DB_PASSWORD=secret`

Run database migrations to create the users table:

```bash
docker compose exec php-cli bash -c "php artisan migrate"
```

Seed the database with some fake users:

```bash
docker compose exec php-fpm bash -c "php artisan tinker"
```
```bash
\App\Models\User::factory(10)->create()
```

Visit http://localhost:8080/graphiql

Next, try adding new types based on the examples here:
https://lighthouse-php.com/tutorial/#installation
