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
 * | 2016-02-01	Maximilian Stadtmüller	created                                              |
 * +-----------------------------------------------------------------------------------------+
 */
?>
<?php
//Read
foreach($pdo->fetch_array('SELECT * FROM offers ORDER BY id') as $row){
	$offers[$row['id']]=array('id' => $row['id'], 'uid' => $row['uid'], 'subject' => $row['subject'], 'hour_unit' => $row['hour_unit'], 'price' => $row['price'], 'comment' => $row['comment']);
	$offers[$row['id']]['contact'] = $pdo->fetch_single('SELECT name, surname, mail FROM users WHERE id="'.$row['uid'].'"');
}

//if($userdata['id'] == "1"){echo '<pre>';echo var_dump($offers);echo '</pre>';}

if(isset($_POST['del'])){
	$id = $_POST['id'];

	$pdo->insert('DELETE FROM offers WHERE id='.$id.';');
	setcookie("message", "<div class=\"alert alert-success\" role=\"alert\">Der Eintrag wurde erfolgreich gelöscht!</div>", time()+60, "/", "nachhilfe.staddi99.ovh");
	header('Location: /boerse/list');
}

if(isset($_POST['save'])){
	$id = $_POST['id'];
	if(isset($_POST['subject'])){$subject = $_POST['subject'];}
	if(isset($_POST['hour_unit'])){$hour_unit = $_POST['hour_unit'];}
	if(isset($_POST['price'])){$price = $_POST['price'];}
	if(isset($_POST['comment'])){$comment = $_POST['comment'];}

	$pdo->update('UPDATE offers SET subject="'.$subject.'", hour_unit="'.$hour_unit.'", price="'.$price.'", comment="'.$comment.'" WHERE id="'.$id.'"');
	setcookie("message", "<div class=\"alert alert-success\" role=\"alert\">Die Änderungen wurden erfolgreich gespeichert</div>", time()+60, "/", "nachhilfe.staddi99.ovh");
	header('Location: /boerse/list');
}
?>