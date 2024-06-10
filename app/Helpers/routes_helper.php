<?php

if (! function_exists('rtm'))
{
  /**
   * Route to method.
   *
   * Declares which controller method should
   * be assigned for the route.
   *
   * @param string $class
   * @param string $method
   * @return string
   */
  function rtm(string $class, string $method)
  {
    $cpt = fn ($s) => str_replace('App\Controllers\\', "", $s);

    return "{$cpt($class)}::{$method}";
  }
}