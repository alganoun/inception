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
	define('DB_NAME', 'wordpress');
	
	/** MySQL database username */
	define('DB_USER', 'alganoun');
	
	/** MySQL database password */
	define('DB_PASSWORD', 'coucou');
	
	/** MySQL hostname */
	define('DB_HOST', 'mariadb:3306');
	
	/** Database Charset to use in creating database tables. */
	define('DB_CHARSET', 'utf8');
	
	/** The Database Collate type. Don't change this if in doubt. */
	define('DB_COLLATE', '');
	
	/**#@+
	 * Authentication Unique Keys and Salts.
	 *
	 * Change these to different unique phrases!
	 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
	 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
	 *
	 * @since 2.6.0
	 */
	define('AUTH_KEY',         'r}7[|CvlthOx2n)j n@u:v.H5p?THZV+cN%+w4@d{EBe-AHr4+K--^MXKOt& efI');
	define('SECURE_AUTH_KEY',  'MH}#}tMu-lb!e;DQedgBgfsc8i!m<|7||t]N-,614fS{4k}2q^iUw]PgX:+EJ+nu');
	define('LOGGED_IN_KEY',    '!sl,ELn>cPa]X&*ZG.7/q{-|BIxPl=dOxv-wY*TFZ,M3-jw~y^L>u.sO{ZAQ+lt0');
	define('NONCE_KEY',        'E|4SjxwwRjR)fxj|t?C|(;~q$G-x/U{*JP+CRbD`/s>sq-tDXrc__-+#^jzFi58h');
	define('AUTH_SALT',        '8VoP`)U|(D6niz&I}e$Z)N6;Fv0O[q)[CoRofJ<mU@Me2{{):S,-pOM+!Yd^lupT');
	define('SECURE_AUTH_SALT', ';A&Zi*_]6Uu4:La n=K[sax%O-SE?hcA]<HiS2Vp.G87v(:j}kY.BJ6w8%0z1u$)');
	define('LOGGED_IN_SALT',   'UX%96KMvb0$%+.}Mf=i24dI7VZY(*Qm:d;~2_z@%GC.4jgt_)U^MSi})OP^Gn ^3');
	define('NONCE_SALT',       '&4=Sums9:dZ-nY;o9S.|x+BcnQ-5B~+Y~9kEB:ped_7>c_t69wn(@xx!9~/?|T42');
	/**#@-*/
	
	/**
	 * WordPress Database Table prefix.
	 *
	 * You can have multiple installations in one database if you give each
	 * a unique prefix. Only numbers, letters, and underscores please!
	 */
	$table_prefix  = 'wp_';
	
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
	define('WP_DEBUG', true);
	
	/* That's all, stop editing! Happy blogging. */
	
	/** Absolute path to the WordPress directory. */
	if ( !defined('ABSPATH') )
	        define('ABSPATH', dirname(__FILE__) . '/');
	
	/** Sets up WordPress vars and included files. */
	require_once(ABSPATH . 'wp-settings.php');
