#!make

DRUSH=$(CURDIR)/vendor/bin/drush -r $(CURDIR)/web
GULP=node --max-old-space-size=1024 ./node_modules/.bin/gulp
PHPCS=$(CURDIR)/vendor/bin/phpcs
PHPSTAN=$(CURDIR)/vendor/bin/phpstan
PHPUNIT=$(CURDIR)/vendor/bin/phpunit

init:
	composer install --prefer-dist --no-progress --optimize-autoloader
	npm install

config-export:
	$(DRUSH) config-export -y

deploy:
	$(DRUSH) sset system.maintenance_mode 1
	$(DRUSH) deploy -y
	$(DRUSH) sset system.maintenance_mode 0
