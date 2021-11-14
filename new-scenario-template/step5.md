# Step 5 - monitoring the WordPress detail

When WordPress application is running, it will log the event. In this scenario, we will use grafana to visualize the log.

# Grafana
Grafana is an open source visualization and analytics software which allows you to query, visualize, alert on, and explore data and metrics. 

## Preparation
Press the dashboard named "Port 3000". It will lead you to Grafana login page.
![Port_3000](./assets/Port_3000.png)

Type admin as username and password to login. It is the default identification. You can change it after logging in.
![grafana_login](./assets/grafana_login.png)

Before you monitor the database, you need to add a data source.
Example:

After you connect the Mysql database, you can press create dashboard
Example:

![Create_Dashboard](./assets/Create_Dashboard.png)

Click add an empty panel to add a panel
Example:

![add_panel](./assets/add_panel.png)

You can edit your panel by using SQL query and select the panel type in this page.
Example:

![Edit_Panel](./assets/Edit_Panel.png)
