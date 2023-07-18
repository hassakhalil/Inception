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
define( 'AUTH_KEY',          'N $UE=jeY%LTC}lig+#Fna[aK|R9R!A&=CrWX~*pU+5^k+#l,~-Q(-(OGoSE&<e*' );
define( 'SECURE_AUTH_KEY',   ']=Eg5BSM%Bf-ukK(MnIuhrfV&DR<1/td*Zrw_O4peTM|lBKU{&=J7<z}$4cP6U(1' );
define( 'LOGGED_IN_KEY',     'aPNo?6N!/4]bX~Qf-w_R[HlI*^ny`{1B)P#c0ezo,Wj[2bmnERM!z}[;e)oA.{ _' );
define( 'NONCE_KEY',         'qnpljeL;6}Dz#zE{4+Z4#,O>4ibJ}Sp6D],.7;I?1DWTod-i3M+268[;;Y].(%=[' );
define( 'AUTH_SALT',         'zF5N+_p_2L6n~/M r3SzB2;L+kpFIEV!0gC0}A=Dh+#3hI/F:QGj0B,gDYSH?i6i' );
define( 'SECURE_AUTH_SALT',  '>M3`$xq}^*tB43no<~]/R}?yq3~H_5[C#r^IYiDIM~SX<!|ylLvzT#WSgCC-vo!H' );
define( 'LOGGED_IN_SALT',    '/(Xu]=(A?s!~&Bb/Qe5aQyjFX#x:(MJZKn/1pmft*2qZc#aYvJ2_99N>B} lkSR^' );
define( 'NONCE_SALT',        'F=$IT6^*V~qI&=mS#rg0(q_;)l*JWkWe!Otc:lRc*`A$v,n~V@n~.d-*d|>q{Tzu' );
define( 'WP_CACHE_KEY_SALT', 'IRMSiX/I|zRw+@F8bnv>HOHsMo(^oh.E&t}b!#x|mkDq{ D>zPYM/f(ZLnK%B9QL' );


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
