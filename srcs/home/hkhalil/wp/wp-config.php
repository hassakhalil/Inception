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
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'myuser' );

/** Database password */
define( 'DB_PASSWORD', 'mypassword' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',          'g78600p&9!DFrG3kVHptoZqk_?M@Wo3R)*_9%g#-:9IbKA84) /(.KC+zf^#(0b0' );
define( 'SECURE_AUTH_KEY',   ':$%,SeDZxGsVqDFLArQp;|Ohkb+{dIG^9}[z:Y!YkM8H|-]8;Qy_hL:$+ypO,^}c' );
define( 'LOGGED_IN_KEY',     'H7@0^CK[Z-`W>]3cQ)8~YJEyWefUi<YkNgb4F@A^x<;(E,>+]noVkk@7!$60(#jv' );
define( 'NONCE_KEY',         'o8tefC9JJSK<jts=h?1J~Gwz@ByRFi9NGOo.%UH9|m;!+{tvG+LSF[nO^9ndM,nh' );
define( 'AUTH_SALT',         '.SAeXEa.N=nRmOC]>^n6>0}O:a10^4@*/n*CV%_]I!|<1x6E2A=5|+^v#M#F@Wn-' );
define( 'SECURE_AUTH_SALT',  'E6`J[w}(C)(aAX7r/IO>@n6$}OOzje]gD%Oiy:^E{bt|$1xpsA_.M{/=A0`$Vt.<' );
define( 'LOGGED_IN_SALT',    '}klA52=H{+ou,)6iRGBJZVsq_S?L$Ta|f$t(j{hdd>ZIpO@1[IS;m@n-URT0z&S&' );
define( 'NONCE_SALT',        '3cM,ZQC[^DpD.//0hA]U@=Qg7O&Y?!bOB4=*=F{%{)=3Ti S} <6=1_nE^=0!YI4' );
define( 'WP_CACHE_KEY_SALT', ';?(q?lP4d:=#~~V0f)S%Ao9lMrm^Hv;n4`}^fc_^R]-L0+JRyXoHPSf6FnDnp(5j' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
