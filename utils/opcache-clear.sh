#!/usr/local/bin/php
<?php

wget localhost/opcache-clear

file_get_contents('http://localhost/opcache-clear.php');

$result = opcache_reset();
if ($result) {
    echo 'opcache clear';
} else {
    echo 'opcache error!';
}