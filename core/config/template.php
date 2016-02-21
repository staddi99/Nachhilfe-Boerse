<?php
/* +-----------------------------------------------------------------------------------------+
 * | Copyright 2015-2016 by Maximilian Stadtmüller <postmaster@staddi99.ovh>                 |
 * +-----------------------------------------------------------------------------------------+
 * |   _____   _  ©2015-2016     _       _   _    ___     ___ Content                 _      |
 * |  / ____| | |  Since 2015   | |     | | (_)  / _ \   / _ \ Management            | |     |
 * | | (___   | |_    __ _    __| |   __| |  _  | (_) | | (_) | System ___   __   __ | |__   |
 * |  \___ \  | __|  / _` |  / _` |  / _` | | |  \__, |  \__, |       / _ \  \ \ / / | '_ \  |
 * |  ____) | | |_  | (_| | | (_| | | (_| | | |    / /     / /   _   | (_) |  \ V /  | | | | |
 * | |_____/   \__|  \__,_|  \__,_|  \__,_| |_|   /_/ by  /_/   (_)   \___/    \_/   |_| |_| |
 * |                                                   Maximilian Stadtmüller                |
 * | visit www.staddi99.ovh for more Information                                             |
 * |                                                                                         |
 * | No part of this website or any of its contents may be reproduced, copied, modified or   |
 * | adapted, without the prior written consent of the author, unless otherwise indicated    |
 * | for stand-alone materials.                                                              |
 * | For more Information visit www.staddi99.ovh                                             |
 * | This notice must be untouched at all times.                                             |
 * +-----------------------------------------------------------------------------------------+
 *
 * +-----------------------------------------------------------------------------------------+
 * | 2015-12-05	Maximilian Stadtmüller	created                                              |
 * +-----------------------------------------------------------------------------------------+
 */

$status_login = 0;

$settings = array();
foreach($pdo->fetch_array('SELECT * FROM settings') as $row){
	$settings[$row['property']]=$row['value'];
}

if(isset($_GET['include'])){
	$incurl = $_GET['include'];
}else{
	$incurl = "startseite";
}

if(isset($_COOKIE['username'])){
	$username_cookie = $_COOKIE['username'];
	$userdata = $pdo->fetch_single('SELECT id, flags FROM users WHERE username="'.$username_cookie.'"');
	$status_login = 1;
    $flags = explode(',', $userdata['flags']);
    $flags = array_map('trim', $flags);
}

if (check_mobile()) {
	$mobile = true;
} else {
	$mobile = false;
}

?>
