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
 * | 2016-01-11	Maximilian Stadtmüller	created                                              |
 * | 2016-01-24	Maximilian Stadtmüller	added save                                           |
 * +-----------------------------------------------------------------------------------------+
 */
?>

<?php
//Read
if($status_login == 1){
	$profiledata = $pdo->fetch_single('SELECT id, username, mail, address, postal_code, state, password, surname, name, birthday FROM users WHERE id="'.$userdata['id'].'"');
}

//Save
if(isset($_POST['save'])){
	$id = $_POST['id'];
	if(isset($_POST['surname']) AND $_POST['surname'] != ""){$surname = $_POST['surname'];}else{$surname = $profiledata['surname'];}
	if(isset($_POST['name']) AND $_POST['name'] != ""){$name = $_POST['name'];}else{$name = $profiledata['name'];}
	//if(isset($_POST['birthday'])){}else{$birthday = $profiledata['birthday'];}
	if(isset($_POST['state']) AND $_POST['state'] != ""){$state = $_POST['state'];}else{$state = $profiledata['state'];}
	if(isset($_POST['address']) AND $_POST['address'] != ""){$address = $_POST['address'];}else{$address = $profiledata['address'];}
	if(isset($_POST['postal_code']) AND $_POST['postal_code'] != ""){$postal_code = $_POST['postal_code'];}else{$postal_code = $profiledata['postal_code'];}
	if(isset($_POST['pwd']) AND $_POST['pwd'] != ""){$pwd = $_POST['pwd'];}else{$pwd = $profiledata['password'];}
	if(isset($_POST['pwdr']) AND $_POST['pwdr'] != ""){$pwdr = $_POST['pwdr'];}else{$pwdr = $profiledata['password'];}
	if($pwd == $pwdr){
		if($pwd!=$profiledata['password']){
			$pwd_hash = hash('sha256', $pwd);
			//$pdo->update('UPDATE users SET state="'.$state.'", surname="'.$surname.'", name="'.$name.'", birthday="'.$birthday.'", address="'.$address.'", postal_code="'.$postal_code.'", password="'.$pwd_hash.'" WHERE id="'.$id.'"');
			$pdo->update('UPDATE users SET state="'.$state.'", surname="'.$surname.'", name="'.$name.'", address="'.$address.'", postal_code="'.$postal_code.'", password="'.$pwd_hash.'" WHERE id="'.$id.'"');
		}else{
			//$pdo->update('UPDATE users SET state="'.$state.'", surname="'.$surname.'", name="'.$name.'", birthday="'.$birthday.'", address="'.$address.'", postal_code="'.$postal_code.'" WHERE id="'.$id.'"');
			$pdo->update('UPDATE users SET state="'.$state.'", surname="'.$surname.'", name="'.$name.'", address="'.$address.'", postal_code="'.$postal_code.'" WHERE id="'.$id.'"');
		}
		setcookie("message", "<div class=\"alert alert-success\" role=\"alert\">Die Änderungen wurden erfolgreich gespeichert</div>", time()+60, "/", "nachhilfe.staddi99.ovh");
		header('Location: /user/profile');
	}
}
?>