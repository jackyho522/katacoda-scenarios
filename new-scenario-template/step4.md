<!-- README.md is generated from mysql_limit_permission.Rmd. Please edit that file -->
# Create users, role and grant appropriate permission to users

## Task
1. There is a file, init.sql
2. You need to copy the contents to init.sql in scripts folder.
3. About the init.sql, it create users, role and grant the appropriate permission to users.

Copy to init.sql

<pre class="file">
create user 'slfok'@'%' identified by '9Kv6UKrQWtqLDVaz';
create user 'lyip'@'%' identified by 'TnW5jaF5LKfVQF7S';
create user 'mhyau'@'%' identified by 'QrWChDCyMpyaShrm';
create user 'ykshi'@'%' identified by 'SAhLggCNt7ddTMxpQ6';
create user 'ctse'@'%' identified by 'pTu4wUx6AZm5xyR';
create user 'ttshiu'@'%' identified by '8XymudGB5G3k';
create user 'tllui'@'%' identified by 'p27GN5UzeWA9eUmX'; 

CREATE ROLE 'sd', 'dba', 'sec', 'sal_mar';

GRANT 'dba' TO 'mhyau'@'%';
GRANT 'sec' TO 'ttshiu'@'%';
GRANT 'sd' TO 'slfok'@'%', 'tllui'@'%';
GRANT 'sal_mar' TO 'lyip'@'%', 'ykshi'@'%', 'ctse'@'%';


GRANT ALL ON *.* TO 'dba';
GRANT ALL ON *.* TO 'sec';
GRANT ALL ON wordpress.* TO 'sd';

GRANT SELECT ON wordpress.wp_user TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_customer_lookup TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_product_meta_lookup TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_order_coupon_lookup TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_order_product_lookup TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_order_stats TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_order_tax_lookup TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_product_meta_lookup TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_reserved_stock TO 'sal_mar';
GRANT SELECT ON wordpress.wp_wc_tax_rate_classes TO 'sal_mar';
GRANT SELECT ON wordpress.wp_woocommerce_order_items TO 'sal_mar';
GRANT SELECT ON wordpress.wp_woocommerce_sessions TO 'sal_mar';
GRANT SELECT ON wordpress.wp_woocommerce_tax_rates TO 'sal_mar';

flush privileges;
</pre>

## Employees
![wp_plugin](./assets/employees_table.png)

## Users
Assume our company has 7 employees.
They have corresponding positions(SD/DBA/SEC/SAL_MAR).

## Positions & role
1. SD(Software development team): Develop and maintain the various wordpress customization, custom developed wordpress plugins and woo commerce.
2. DBA(Database administration): Manage and maintain the database
3. SEC(Security administration): Secur wordpress, woo commerce, network and database
4. SAL_MAR(Sales and marketing): support customer, maintain product/pricing data and creating the marketing/promotion campaigns in the wordpress and woo commerce. 

## Grant permission
1. SD: They need to view various logs and modify some data in the wordpress database to maintain the daily operation of wordpress.
       For example, check for any abnormalities through wp_actionscheduler_actions, wp_actionscheduler_logs, wp_wc_download_log, etc.
       For example, large-scale modification of data through database such as modify the stock_status of a large number of items.
       
2. DBA: They need all permissions to manage the database.
       For example, when a new employee joins, they need to create a new mysql account and grant some appropriate permissions to them.
       For example, our company is using grafana to conduct the audit. Therefore, they need all permissions to create a panel for auditing.
       
3. SEC: They need to conduct a comprehensive security review of the database and website.
        For example, check if the general_log is abnormal.
        
4. SAL_MAR: They only need SELECT permission of specific tables(some tables that only their work will involve) for specific or large number of queries.
            The work of modifying data will only be done in the foreground.
            For example: They need to check the sales in the past month for financial statistics

