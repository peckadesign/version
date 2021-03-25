composer:
	composer validate
	composer update --no-interaction --prefer-dist

phpstan:
	vendor/bin/phpstan analyse src/ --level 2 --no-progress

cs:
	vendor/bin/phpcs src/ --standard=vendor/pd/coding-standard/src/PeckaCodingStandard/ruleset.xml
	vendor/bin/phpcs src/ --standard=vendor/pd/coding-standard/src/PeckaCodingStandardStrict/ruleset.xml

