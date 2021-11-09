# Step 1 - Create simple WordPress stack

Create a simple WordPress stack using wordpress, mysql/mysql-server and grafana/grafana images.
1. MySQL is the backend database. 
2. Grafana is an open source visualization and analytics software which allows users to analyze and monitor the database.

## Task
1. There are 2 files, docker-compose.yml and my.cnf
2. You need to copy the contents to docker-compose.yml and my.cnf.
3. About the docker-compose.yml, it pulls 3 images that will be used in this scenario.
4. It used bind mount. The file or directory on the host machine is mounted into containers. 
5. About the my.cnf, it enables general log which records all actions of mysqld and logs into a table.

Copy to docker-compose.yml 
<pre class="file"
 data-filename="./docker-compose.yml"
  data-target="replace">
version: "3.2"
services: 
  grafana: 
    container_name: grafana_ecommerce
    image: grafana/grafana
    ports: 
      - "3000:3000"
    volumes: 
      - "./grafana/data:/var/lib/grafana"
  mysql-server: 
    container_name: mysql_ecommerce
    environment: 
      MYSQL_DATABASE: wordpress
      MYSQL_PASSWORD: secret
      MYSQL_ROOT_PASSWORD: 12345
      MYSQL_USER: wordpress_user
    image: mysql/mysql-server
    ports: 
      - "13306:3306"
    volumes: 
      - "./cfg/my.cnf:/etc/my.cnf"
      - "./scripts:/docker-entrypoint-initdb.d"
      - "./db_data:/var/lib/mysql"
  wordpress: 
    container_name: wordpress_ecommerce
    depends_on: 
      - mysql-server
    environment: 
      WORDPRESS_DB_HOST: "mysql-server:3306"
      WORDPRESS_DB_PASSWORD: secret
      WORDPRESS_DB_USER: wordpress_user
      WP_PLUGINS: "nginx-helper redis-cache mailgun better-passwords better-wp-security woocommerce woocommerce-payments users-customers-import-export-for-wp-commerce"
    image: "wordpress:latest"
    ports: 
      - "20080:80"
    volumes: 
      - "./wordpress:/var/www/html"
      - "./plugins:/var/www/html/wp-content/plugins"
</pre>

Copy to my.cnf
<pre class="file"
 data-filename="./cfg/my.cnf"
  data-target="replace">
[mysqld]
log_output = TABLE
general_log = 1 
</pre>

Run `docker-compose up -d`{{execute}} to setup your environment.

You can use `docker-compose logs`{{execute}} to view services logs.


