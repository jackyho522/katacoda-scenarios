# Step 4 - Improve WordPress Security

WordPress is open-source content management system for people to set up websites, but it may suffer several attacks, such as brute force attacks by attackers. It is necessary to improve WordPress Security. In this scenario, the iThemes Security plugin and Password bcrypt plugin will be used to improve WordPress Security.
# iThemes Security
iThemes Security is a plugin used to secure and protect WordPress. Some functions are limited because of free version. Only functions of free version will be introduced.

## Installation and Setting up the iThemes Security plugin
Press Add New on the left of the WordPress menu.

![wp_plugin](./assets/wp_plugin.png)

Type iThemes Security in the search bar and click install now.
![wp_ithemes_security](./assets/wp_ithemes_security1.png)

After installation, click Activate.
![wp_activate_ithemes_plugin](./assets/wp_activate_ithemes_plugin1.png)

Press Security on the left of the WordPress menu.
Choose ECOMMERCE type to set up the plugin.
![wp_iSecurity](./assets/wp_iSecurity.png)

In this scenario, choose self and choose the correct role for customers

![wp_selfclient](./assets/selfclient.png)
![wp_customers](./assets/selectcustomer.png)

This plugin can force users to use a strong password. As mentioned in step 2, it analyzes patterns in the password to prevent dictionary attack.

![wp_Strong_pw](./assets/wp_Strong_pw.png)

In Login Security, you can enable Two-Factor features to make your WordPress user accounts more secure.

![wp_two_factor](./assets/wp_two_factor.png)

Free version of iThemes can allow the website to prevent LOCAL brute force attacks.

Local Brute Force and Network Brute Force:

Both enabled:

![wp_lockout](./assets/lockouts.png)

You can double check your secure setting by this overview page.

After finishing the configuration, click Secure Site to complete the setup.

![wp_Secure_Site](./assets/wp_Secure_Site.png)

You can view the dashboard here:

![dashboard_menu](./assets/dashboard_menu.png)

![dashboard](./assets/dashboard1.png)

## Verify itheme Security features
When users try to login to WordPress, user can set up two-factor authentication to protect their accounts.
![wp_two_factor1](./assets/wp_two_factor1.png)

Include mobile app, email and backup codes:

![wp_two_factor2](./assets/wp_two_factor2.png)

The mobile app choice will generate QR code. After users scan the QR code, enter the authentication code.

Example:

![wp_QR](./assets/QRcode.png)

If the users' password is weak, It will force the user to change a strong password.

![wp_change_pw](./assets/wp_change_pw.png)

## Prevent Unauthorized Login 

When an attacker performs brute force attack on your WordPress site, iThemes Security can detect and log it.

Looking from hacker perspective:

wordlist contains administrator password for demonstration:

![hack1](./assets/hack1.png)

Brute force process:

![hack1](./assets/hack2.png)

The screenshot shown here shows that `Error: Unknown response received Code: 403`. The plugin successfully protected the website.

In the dashboard

Example:

![wp_iSecurity_log](./assets/wp_iSecurity_log.png)

You can also configure the login attempts to reduce risk. Using admin as username is not a good security practice. As a hacker perpective, username "admin" is too obvious and let hackers easy to guess it. It will greatly increase the chance of hackers to attack your website.
iThemes security allow you to automatically ban "admin" user and limit max login attempts. 

Press gear icon in the Lockouts page:

![wp_gear](./assets/attempts0.png)

It will lead to this page:

![wp_attempts](./assets/attempts.png)

It is possible to add users into ban list in the Lockouts page also. Default ban list is not recommended. It is very old and no longer supported. 

Example:

![addban](./assets/addban.png)


# Password bcrypt
Password bcrypt is a WordPress plugin to replace WordPress's outdated and insecure MD5-based password hashing with a modern and more secure encryption method, bcrypt.

## Installation
Type Password bcrypt in the search bar and click install now.
![wp_Password_bcrypt](./assets/wp_Password_bcrypt.png)

After installation and clicking Activate, the plugin will encrypt the password immediately.
![wp_Password_bcrypt_Activate](./assets/wp_Password_bcrypt_Activate.png)
 
Alternatively, download "wp-password-bcrypt.php" file from the plugin's github site.
Create folder "mu-plugins" in wp-content folder and copy the php file downloaded in the folder.
![bcrypt_download](./assets/bcrypt_download.PNG)

The plugin will becomes must-use plugin in WordPress, which can also encrypt the password.
![bcrypt_verifyinstall](./assets/bcrypt_verifyinstall.PNG)
