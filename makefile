cli:
	docker compose exec php-cli bash

install-laravel:
	docker compose exec php-cli bash -c "composer create-project laravel/laravel install-app"
	docker compose exec php-cli bash -c "mv install-app/* ./ && mv install-app/.* ./ && rm -rf install-app"
	docker compose exec php-cli bash -c "composer require nuwave/lighthouse"
	docker compose exec php-cli bash -c "php artisan vendor:publish --tag=lighthouse-schema"
	docker compose exec php-cli bash -c "composer require mll-lab/laravel-graphiql"
