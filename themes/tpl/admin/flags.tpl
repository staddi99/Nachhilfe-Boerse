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
 * | 2016-02-11	Maximilian Stadtmüller	created                                              |
 * +-----------------------------------------------------------------------------------------+
 */
?>

<?php
if(in_array("admin", $flags)){
    echo '<h3>Rechteübersicht</h3>'."\r\n";
    echo '<div class="table default">'."\r\n";
    echo '    <div class="row head">'."\r\n";
    echo '        <div class="cell">Flag:</div>'."\r\n";
    echo '        <div class="cell">Beschreibung:</div>'."\r\n";
    echo '    </div>'."\r\n";
    echo '    <div class="row">'."\r\n";
    echo '        <div class="cell">host</div>'."\r\n";
    echo '        <div class="cell">Zeigt den Aktualisieren-Button beim Speedtest der Serveranbindung an.</div>'."\r\n";
    echo '    </div>'."\r\n";
    echo '    <div class="row">'."\r\n";
    echo '        <div class="cell">debug</div>'."\r\n";
    echo '        <div class="cell">Zeigt Debugmeldungen an.</div>'."\r\n";
    echo '    </div>'."\r\n";
    echo '    <div class="row">'."\r\n";
    echo '        <div class="cell">test</div>'."\r\n";
    echo '        <div class="cell">Hat Zugriff auf die Testseite, um diese für Testzwecke zu nutzen.</div>'."\r\n";
    echo '    </div>'."\r\n";
    echo '    <div class="row">'."\r\n";
    echo '        <div class="cell">admin</div>'."\r\n";
    echo '        <div class="cell">Hat Zugriff auf die Adminseite und kann Rechte vergeben.</div>'."\r\n";
    echo '    </div>'."\r\n";
    echo '    <div class="row">'."\r\n";
    echo '        <div class="cell">entry-admin</div>'."\r\n";
    echo '        <div class="cell">Kann Angebote löschen und bearbeiten.</div>'."\r\n";
    echo '    </div>'."\r\n";
    echo '</div>'."\r\n";
    echo '<br />'."\r\n";
    echo '<h3>Benutzerrechte</h3>'."\r\n";
    echo '<form action="" method="post">'."\r\n";
    echo '<div class="table">'."\r\n";
    echo '    <div class="row">'."\r\n";
    echo '        <div class="cell"><strong>UserID:</strong></div>'."\r\n";
    echo '        <div class="cell"><strong>Benutzername:</strong></div>'."\r\n";
    echo '        <div class="cell"><strong>Vorname:</strong></div>'."\r\n";
    echo '        <div class="cell"><strong>Nachname:</strong></div>'."\r\n";
    echo '        <div class="cell"><strong>E-Mail-Adresse:</strong></div>'."\r\n";
    echo '        <div class="cell"><strong>Rechte:</strong></div>'."\r\n";
    echo '        <div class="cell"></div>'."\r\n";
    echo '    </div>'."\r\n";
    foreach ($users as $users){
        echo '    <div class="row">'."\r\n";
        echo '        <div class="cell">'.$users['id'].'</div>'."\r\n";
        echo '        <div class="cell">'.$users['username'].'</div>'."\r\n";
        echo '        <div class="cell">'.$users['surname'].'</div>'."\r\n";
        echo '        <div class="cell">'.$users['name'].'</div>'."\r\n";
        echo '        <div class="cell">'.$users['mail'].'</div>'."\r\n";
        echo '        <div class="cell"><input type="text" id="flags" name="flags" class="form-control" value="'.$users['flags'].'"></div>'."\r\n";
        echo '        <div class="cell"><input type="hidden" id="id" name="id" class="form-control" value="'.$users['id'].'" /><button class="btn btn-lg btn-primary btn-block" name="save" type="submit">Speichern</button></div>'."\r\n";
        echo '    </div>'."\r\n";
    }
    echo '</div>'."\r\n";
    echo '</form>'."\r\n";
} else {
	echo '<div class="alert alert-warning" role="alert">Sie haben keine Berechtigung, um diese Seite aufzurufen!</div>';
}
?>
