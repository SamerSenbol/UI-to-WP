<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'UI-to-WP' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'TZ)k/&`3)ZX,]<OBog`,uKi9?IHUIYhlL,3q|9K/M%so<3Q^Zp4}GRM2CVL/69{9' );
define( 'SECURE_AUTH_KEY',  'Z;3s6tYl3SY%KG4sQKE,n=2~y4(BUyLV/DVNZ8d+H^bi?o;/|(D+Gxt6&12`80#b' );
define( 'LOGGED_IN_KEY',    'KUbfoDN*Hw<Pyhyw>n]L<hfsQKutYa5Fg#]Y@`Su[?!kH):BO=}9}{:m%-Kc&_n<' );
define( 'NONCE_KEY',        'Q1i.aZgo#17p?PdM~j_c[z>LpmXN1Q&gSL# <2D]II5m[o}+vV&C&$.cbZ>Hd!&{' );
define( 'AUTH_SALT',        'CCnc.%p!Q1zB}8~7nFqt+bM,[SxcrA<&PIZ+Gt{3(?O|,3!!:BK$Ah^|*UqSw#3/' );
define( 'SECURE_AUTH_SALT', '6XLn%Of1fw7][v-Wskp&i2iL8$SY)8c.1FRyY*=!iNcl&c2&rC{xm?wv#mCFsl1l' );
define( 'LOGGED_IN_SALT',   '5q$R9)Ed/Vs$gJQY(s6}$jCNE4j1&,H]oh46ldGvqxM[^N{14pllPpZ)/>BR>$hB' );
define( 'NONCE_SALT',       'FP{Psc$!OOgByD%<%eE7upEkTQ3H&~OvKfW AMrq*b=~OQ+k)p3R*Pg,G?PHX:4q' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
