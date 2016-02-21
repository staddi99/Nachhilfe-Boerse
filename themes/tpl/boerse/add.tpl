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
if($status_login == 1){
    echo '<form action="" method="post" class="form-signin">'."\r\n";
    echo '    <label for="subject" class="sr-only">Fach</label>'."\r\n";
    echo '    <select name="subject" id="subject" class="form-control">'."\r\n";
    echo '        <option value="" selected="selected">Bitte Fach auswählen</option>'."\r\n";
    echo '        <option value="english">Englisch</option>'."\r\n";
    echo '        <option value="french">Französisch</option>'."\r\n";
    echo '        <option value="latin">Latein</option>'."\r\n";
    echo '        <option value="german">Deutsch</option>'."\r\n";
    echo '        <option value="math">Mathematik</option>'."\r\n";
    echo '        <option value="physics">Physik</option>'."\r\n";
    echo '        <option value="chemistry">Chemie</option>'."\r\n";
    echo '        <option value="biology">Biologie</option>'."\r\n";
    echo '        <option value="computer_science">Informatik</option>'."\r\n";
    echo '        <option value="geography">Erdkunde</option>'."\r\n";
    echo '        <option value="story">Geschichte</option>'."\r\n";
    echo '        <option value="social_customer">Sozialkunde</option>'."\r\n";
    echo '        <option value="ethics">Ethik</option>'."\r\n";
    echo '        <option value="religion">Religion</option>'."\r\n";
    echo '        <option value="music">Musik</option>'."\r\n";
    echo '    </select>'."\r\n";
    echo '    <label for="hour_unit" class="sr-only">Stundeneinheit</label>'."\r\n";
    echo '    <select name="hour_unit" id="hour_unit" class="form-control">'."\r\n";
    echo '        <option value="" selected="selected">Bitte Zeiteinheit auswählen</option>'."\r\n";
    echo '        <option value="45">45 Minuten</option>'."\r\n";
    echo '        <option value="60">60 Minuten</option>'."\r\n";
    echo '    </select>'."\r\n";
    echo '    <label for="price" class="sr-only">Preis / Stunde</label>'."\r\n";
    echo '    <input type="text" id="price" name="price" class="form-control" placeholder="Preis in Cent / Stunde (Auf Anfrage, wenn leer)" autofocus />'."\r\n";
    echo '    <label for="comment" class="sr-only">Zusatz</label>'."\r\n";
    echo '    <input type="text" id="comment" name="comment" class="form-control" placeholder="Zusatz (Weitere Informationen, etc.)" /><br />'."\r\n";
    echo '    <button class="btn btn-lg btn-primary btn-block" name="add" type="submit">Erstellen</button>'."\r\n";
    echo '</form>'."\r\n";
} else {
	echo '<div class="alert alert-warning" role="alert">Sie sind nicht angemeldet!</div>';
}