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
 * | 2016-01-05	Maximilian Stadtmüller	created                                              |
 * +-----------------------------------------------------------------------------------------+
 */
?>

<?php
if(isset($_POST['login'])){
	$username = $_POST['username'];
	$pwd = hash('sha256', $_POST['pwd']);
	
	$res_password = $pdo->fetch_single('SELECT password FROM users WHERE username="'.$username.'"');
	$res_pwd = $res_password['password'];
	
	if($res_pwd != NULL){
		if($pwd == $res_pwd){
			if(isset($_POST['remember-me'])){
				setcookie("username", $username, time()+31536000, "/", "nachhilfe.staddi99.ovh");
				setcookie("password", $pwd, time()+31536000, "/", "nachhilfe.staddi99.ovh");
			}else{
				setcookie("username", $username, time()+43200, "/", "nachhilfe.staddi99.ovh");
				setcookie("password", $pwd, time()+43200, "/", "nachhilfe.staddi99.ovh");
			}
			setcookie("message", "<div class=\"alert alert-success\" role=\"alert\">Sie haben sich erfolgreich angemeldet!</div>", time()+60, "/", "nachhilfe.staddi99.ovh");
			header('Location: /');
		}else{
			echo '<div class="alert alert-warning" role="alert">Die Passwörter stimmen nicht überein!</div>';
		}
	}elseif($res_pwd == NULL){
		echo '<div class="alert alert-warning" role="alert">Der eingegebene Benutzername existiert nicht!</div>';
	}
}
?>
