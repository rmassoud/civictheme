<?php

/**
 * @file
 * Drupal site-specific configuration file.
 */

declare(strict_types=1);

/**
 * Settings should always reside outside root folder.
 */
require DRUPAL_ROOT . '/../config/settings.php';

// Automatically generated include for settings managed by ddev.
$ddev_settings = __DIR__ . '/settings.ddev.php';
if (getenv('IS_DDEV_PROJECT') == 'true' && is_readable($ddev_settings)) {
  require $ddev_settings;
}
