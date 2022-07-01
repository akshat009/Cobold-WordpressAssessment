<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'cobold' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '6=8J4cm,2<kjreF/6/n;rU_Xj?2E-6_+6tqf3qC/9*8{ ,~U&o26X7sHagpL4GC&' );
define( 'SECURE_AUTH_KEY',  'c/UTdJ*7+M#` 4+STph{at9L`$$]f (`{O-XN-MJtiAc.PpC<KL]]hU6~RmvpYtN' );
define( 'LOGGED_IN_KEY',    'u5bsWZz^~&(X%dKU>K0.NR95VXv.l5`tD~ES>q*1l2wk6[*CL^;h<Alj0@Zhqy8=' );
define( 'NONCE_KEY',        'V^t_r!$PQaZQ}:BK|wF([WB_^K4e[3XPC_]%D<eJ&!P|e3AQ*lsNfT=#k3qL~kT<' );
define( 'AUTH_SALT',        '[Va(V:Cp@6UVp#u&szu>Xgz^^E=$)X{|H>:U5w*jr%%w=wOBV}9hQ)v6x=9N:9YK' );
define( 'SECURE_AUTH_SALT', '_jPchfaPz(V*/<87H_2t3Q4D53u/0Dsy=5D.kbI!*Blv]*89Pa=BSTZS$s`~}y}V' );
define( 'LOGGED_IN_SALT',   'eI1S3IF3S8X6WPJ1p]211&Xtw,6wu,a3Ec,d?%`YsAZ?JV|#Lk]=^!|j0MlM0iyz' );
define( 'NONCE_SALT',       'NJYs.HoIrh.pAfH9sf:HY#?vh0C]^03FHF-c}2zN^517&x((tk^,kf,g0uHRYQ2@' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
