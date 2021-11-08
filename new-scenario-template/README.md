<!-- README.md is generated from README.Rmd. Please edit that file -->

# Deploy Wordpress and WooCommerce using Docker Compose

Image:

  - Nginx web server
  - MariaDB/MySQL used for Wordpress database
  - MySQL database
  - yml file for customization.

You can deploy a local docker Wordpress site with WooCommerce in 5 minutes
by editing yml file:


Default identification for your wordpress website admin:

  - `Username: wordpress` and
  - `Password: wordpress`

Default identification for the phpMyAdmin interface:

  - `Username: root` and
  - `Password: password`

**Useful set of commands to know**:

``` bash
# Stop and remove containers
docker-compose down
# Build, and start the wordpress website
docker-compose up -d --build
# Reset everything
docker-compose down
rm -rf certs/* certs-data/* logs/nginx/* mysql/* wordpress/*
```
