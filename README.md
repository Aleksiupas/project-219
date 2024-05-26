
# Project 219


## Installation

To install this project run

```bash
  docker compose up --build -d
```

```bash
  make install-laravel
```

Complete `server/.env` `DB_PASSWORD`

Run database migrations to create the users table:

```bash
  docker compose exec php-cli bash -c "php artisan migrate"
```

Seed the database with some fake users:

```bash
  docker compose exec php-fpm bash -c "php artisan tinker"
        \App\Models\User::factory(10)->create()
```

Visit http://localhost:8080/graphiql
