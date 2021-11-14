# Step 5 - monitoring the WordPress detail

When WordPress application is running, it will log the event. In this scenario, we will use grafana to visualize the log.

# Grafana
Grafana is an open source visualization and analytics software which allows you to query, visualize, alert on, and explore data and metrics. 

## Set up of Grafana
First, press the dashboard named "Port 3000". It will lead you to Grafana login page.
![Port_3000](./assets/Port_3000.png)

Second, type admin as username and password to login
![grafana_login](./assets/grafana_login.png)

After you connect the Mysql database, you can press create dashboard
![Create_Dashboard](./assets/Create_Dashboard.png)

Then, click add an empty panel to add a panel
![add_panel](./assets/add_panel.png)

You can edit your panel by using SQL query and select the panel type in this page.
![Edit_Panel](./assets/Edit_Panel.png)
