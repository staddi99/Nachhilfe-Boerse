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
if(isset($_POST['edit'])){
	echo '<form action="" method="post" class="form-signin">'."\r\n";
	echo '    <label for="subject" class="sr-only">Fach</label>'."\r\n";
	echo '    <select name="subject" id="subject" class="form-control">'."\r\n";
	echo '        <option value="english"'; if($offers[$_POST['id']]['subject']=="english"){echo ' selected="selected"';}else{} echo'>Englisch</option>'."\r\n";
	echo '        <option value="french"'; if($offers[$_POST['id']]['subject']=="french"){echo ' selected="selected"';}else{} echo'>Französisch</option>'."\r\n";
	echo '        <option value="latin"'; if($offers[$_POST['id']]['subject']=="latin"){echo ' selected="selected"';}else{} echo'>Latein</option>'."\r\n";
	echo '        <option value="german"'; if($offers[$_POST['id']]['subject']=="german"){echo ' selected="selected"';}else{} echo'>Deutsch</option>'."\r\n";
	echo '        <option value="math"'; if($offers[$_POST['id']]['subject']=="math"){echo ' selected="selected"';}else{} echo'>Mathematik</option>'."\r\n";
	echo '        <option value="physics"'; if($offers[$_POST['id']]['subject']=="physics"){echo ' selected="selected"';}else{} echo'>Physik</option>'."\r\n";
	echo '        <option value="chemistry"'; if($offers[$_POST['id']]['subject']=="chemistry"){echo ' selected="selected"';}else{} echo'>Chemie</option>'."\r\n";
	echo '        <option value="biology"'; if($offers[$_POST['id']]['subject']=="biology"){echo ' selected="selected"';}else{} echo'>Biologie</option>'."\r\n";
	echo '        <option value="computer_science"'; if($offers[$_POST['id']]['subject']=="computer_science"){echo ' selected="selected"';}else{} echo'>Informatik</option>'."\r\n";
	echo '        <option value="geography"'; if($offers[$_POST['id']]['subject']=="geography"){echo ' selected="selected"';}else{} echo'>Erdkunde</option>'."\r\n";
	echo '        <option value="story"'; if($offers[$_POST['id']]['subject']=="story"){echo ' selected="selected"';}else{} echo'>Geschichte</option>'."\r\n";
	echo '        <option value="social_customer"'; if($offers[$_POST['id']]['subject']=="social_customer"){echo ' selected="selected"';}else{} echo'>Sozialkunde</option>'."\r\n";
	echo '        <option value="ethics"'; if($offers[$_POST['id']]['subject']=="ethics"){echo ' selected="selected"';}else{} echo'>Ethik</option>'."\r\n";
	echo '        <option value="religion"'; if($offers[$_POST['id']]['subject']=="religion"){echo ' selected="selected"';}else{} echo'>Religion</option>'."\r\n";
	echo '        <option value="music"'; if($offers[$_POST['id']]['subject']=="music"){echo ' selected="selected"';}else{} echo'>Musik</option>'."\r\n";
	echo '    </select>'."\r\n";
	echo '    <label for="hour_unit" class="sr-only">Stundeneinheit</label>'."\r\n";
	echo '    <select name="hour_unit" id="hour_unit" class="form-control">'."\r\n";
	echo '        <option value="45"'; if($offers[$_POST['id']]['hour_unit']=="45"){echo ' selected="selected"';}else{} echo'>45 Minuten</option>'."\r\n";
	echo '        <option value="60"'; if($offers[$_POST['id']]['hour_unit']=="60"){echo ' selected="selected"';}else{} echo'>60 Minuten</option>'."\r\n";
	echo '    </select>'."\r\n";
	echo '    <label for="price" class="sr-only">Preis / Stunde</label>'."\r\n";
	echo '    <input type="text" id="price" name="price" class="form-control" value="'.$offers[$_POST['id']]['price'].'" autofocus />'."\r\n";
	echo '    <label for="comment" class="sr-only">Zusatz</label>'."\r\n";
	echo '    <input type="text" id="comment" name="comment" class="form-control" value="'.$offers[$_POST['id']]['comment'].'" /><br />'."\r\n";
    echo '    <input type="hidden" id="id" name="id" class="form-control" value="'.$offers[$_POST['id']]['id'].'" />';
	echo '    <button class="btn btn-lg btn-primary btn-block" name="save" type="submit">Speichern</button>'."\r\n";
	echo '</form>'."\r\n";
}
?>

<div class="table">
<?php
foreach ($offers as $offers)
{
$price = $offers['price']/100;
if($price == 0){$price = "Auf Anfrage";}else{$price = $price.' €';}
if($offers['comment'] == ""){$offers['comment'] = "Kein Zusatz vorhanden";}
echo '    <div class="row">'."\r\n";
echo '        <div class="cell">'."\r\n";
echo '            <div class="row">'."\r\n";
echo '                <div class="cell"><strong>Name:</strong></div>'."\r\n";
echo '                <div class="cell">'.$offers['contact']['surname'].' '.$offers['contact']['name'].'</div>'."\r\n";
echo '            </div>'."\r\n";
echo '            <div class="row">'."\r\n";
echo '                <div class="cell"><strong>E-Mail-Adresse:</strong></div>'."\r\n";
echo '                <div class="cell"><a href="mailto://'.$offers['contact']['mail'].'">'.$offers['contact']['mail'].'</a></div>'."\r\n";
echo '            </div>'."\r\n";
echo '            <div class="row">'."\r\n";
echo '                <div class="cell"><strong>Fach:</strong></div>'."\r\n";
echo '                <div class="cell">'.$language[$offers['subject']].'</div>'."\r\n";
echo '            </div>'."\r\n";
echo '            <div class="row">'."\r\n";
echo '                <div class="cell"><strong>Stundeneinheit:</strong></div>'."\r\n";
echo '                <div class="cell">'.$offers['hour_unit'].' Minuten</div>'."\r\n";
echo '            </div>'."\r\n";
echo '            <div class="row">'."\r\n";
echo '                <div class="cell"><strong>Preis / Stunde:</strong></div>'."\r\n";
echo '                <div class="cell">'.$price.'</div>'."\r\n";
echo '            </div>'."\r\n";
echo '            <div class="row">'."\r\n";
echo '                <div class="cell"><strong>Zusatz:</strong></div>'."\r\n";
echo '                <div class="cell">'.$offers['comment'].'</div>'."\r\n";
echo '            </div>'."\r\n";
echo '        </div>'."\r\n";
if($offers['uid'] == $userdata['id'] || in_array("entry-admin", $flags)){
	echo '        <div class="cell"><form action="" method="post" class="form-signin"><input type="hidden" id="id" name="id" class="form-control" value="'.$offers['id'].'" /><button class="btn btn-lg btn-primary btn-block" name="edit" type="submit">Bearbeiten</button></form></div>'."\r\n";
    echo '        <div class="cell"><form action="" method="post" class="form-signin"><input type="hidden" id="id" name="id" class="form-control" value="'.$offers['id'].'" /><button class="btn btn-lg btn-primary btn-block" name="del" type="submit">Löschen</button></form></div>'."\r\n";
}
echo '    </div>'."\r\n";
echo '    <br />'."\r\n";
}
?>
</div>