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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'S6NKN87bIgSB/2I3dw+7pQ1XqQi3F7vb0n0IHMIGREFVvdw/qKIuupnm2foU3yleEgVEI5WrTpqazdO6E2tMRQ==');
define('SECURE_AUTH_KEY',  '1lJqBqn0yR3/ZE1z7MMfTkMEF6NnQtZIVpLV28zoNwhU/Inr3VDQhZo9LyBQCMz0G7kBgkbELeDevdr/utEKyA==');
define('LOGGED_IN_KEY',    'mZ/AuJN4CR9ZUn3lA+ur4zg1nd4fxuv5pBYRaciE/rozBmJooMhh6GpECld2bFADScAL+NH7ExwjtYlBQhIbeQ==');
define('NONCE_KEY',        '0AgE5i+ojXD4Uf+sXxVTwlxHIRr2axyc4G7Uzk1xjJmdn99r9EPc2StOIiohQOoCEceuoLex/HoncL+FCfnYiw==');
define('AUTH_SALT',        'PSGL5wktLhJHlTbyNLv78qr5d3RZPAh63xbGN9NA5enzyOWdfa51qcKwIUrZdVkcYAHz39Skdn17avPBnqbBSw==');
define('SECURE_AUTH_SALT', 'Izz6f30PFfa2iWJnQMMecySnO4npMYaMqh0i0wmwy29fVmqevd6K8mTCqkBtKF/j04eG9B1wcAThiXvwbNHqnQ==');
define('LOGGED_IN_SALT',   'J40sATEb7tsGxTE0YsptoFGNKftm6mHmSCMCeVsdJDqGKooj65eJX20tVtMSKjqPiB+nOPfu5x6TpUFMXO235Q==');
define('NONCE_SALT',       '/Ixs6A8wblkFaCSULpraL/qvtfXlA7zLasxQpDJuO56j1eD6glmR9ydO9S+ebdp6LecO2Z1XJloib1ZmwvH7Yw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
