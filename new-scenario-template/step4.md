# Step 4 - Improve WordPress Security

WordPress is open-source content management system for people to set up websites, but it may suffer several attacks, such as brute force attacks by attackers. It is necessary to improve WordPress Security. In this scenario, the iThemes Security plugin and Password bcrypt plugin will be used to improve WordPress Security.
# iThemes Security
iThemes Security is a plugin used to secure and protect WordPress.

## Installation and Setting up the iThemes Security plugin
Press Add New on the left of the WordPress menu.

![wp_plugin](./assets/wp_plugin.png)

Type iThemes Security in the search bar and click install now.
![wp_ithemes_security](./assets/wp_ithemes_security1.png)

After installation, click Activate.
![wp_activate_ithemes_plugin](./assets/wp_activate_ithemes_plugin1.png)

Press Security on the left of the WordPress menu and choose ECOMMERCE type to set up the plugin.
![wp_iSecurity](./assets/wp_iSecurity.png)

This plugin can force users to use a strong password.
![wp_Strong_pw](./assets/wp_Strong_pw.png)

Also, you can enable Two-Factor features to make your WordPress more secure.
![wp_two_factor](./assets/wp_two_factor.png)

You can configure this plugin based on your preferences.
After configuration, click Secure Site to complete the setup.
![wp_Secure_Site](./assets/wp_Secure_Site.png)

## Verify the itheme Security features
When users try to login to WordPress, user can set up Two-factor to protect their accounts.
![wp_two_factor1](./assets/wp_two_factor1.png)

The Two-factor methods include mobile app, email and backup codes.
![wp_two_factor2](./assets/wp_two_factor2.png)

If the user password is weak, It will force the user to change a strong password.
![wp_change_pw](./assets/wp_change_pw.png)

## Prevent Unauthorized Login (Brute force attack)
When an attacker performs brute force attack on your WordPress site, iThemes Security can log it.
![wp_iSecurity_log](./assets/wp_iSecurity_log.png)

Also, iThemes Security prevents brute force attacks because of two-factor authentication and strong password.
![wp_iSecurity_2A](./assets/wp_iSecurity_2A.png)

# Password bcrypt
Password bcrypt is WordPress plugin to replace WP's outdated and insecure MD5-based password hashing with the modern and secure bcrypt.

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
