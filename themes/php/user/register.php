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
if(isset($_POST['register'])){
	$username = $_POST['username'];
	$mail = $_POST['mail'];
	$name = $_POST['name'];
	$surname = $_POST['surname'];
	$pwd = $_POST['pwd'];
	$pwdr = $_POST['pwdr'];
	
	$res_username = $pdo->fetch_single('SELECT username FROM users WHERE username="'.$username.'"');
	$res_mail = $pdo->fetch_single('SELECT username FROM users WHERE mail="'.$mail.'"');
	
	if($res_username == NULL & $res_mail == NULL){
		if($pwd == $pwdr){
			$pwd_hash = hash('sha256', $pwd);
			$pdo->insert('INSERT INTO users (username, password, mail, surname, name) VALUES ("'.$username.'","'.$pwd_hash.'","'.$mail.'","'.$surname.'","'.$name.'")');
			setcookie("message", "<div class=\"alert alert-success\" role=\"alert\">Der Benutzer wurde erfolgreich erstellt!</div>", time()+60, "/", "nachhilfe.staddi99.ovh");
			header('Location: /');
		}else{
			echo '<div class="alert alert-warning" role="alert">Die Passwörter stimmen nicht überein!</div>';
		}
	}elseif($res_username != NULL & $res_mail != NULL){
		echo '<div class="alert alert-warning" role="alert">Der Benutzername und die E-Mail-Adresse wurden bereits verwendet!</div>';
	}elseif($res_username != NULL){
		echo '<div class="alert alert-warning" role="alert">Der Benutzername wurde bereits verwendet!</div>';
	}elseif($res_mail != NULL){
		echo '<div class="alert alert-warning" role="alert">Die E-Mail-Adresse wurde bereits verwendet!</div>';
	}
}
?>
