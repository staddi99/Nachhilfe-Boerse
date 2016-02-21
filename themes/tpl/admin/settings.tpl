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
    echo '<form action="" method="post">'."\r\n";
    echo '<div class="table default">'."\r\n";
    echo '    <div class="row head">'."\r\n";
    echo '        <div class="cell">Eigenschaft:</div>'."\r\n";
    echo '        <div class="cell">Wert:</div>'."\r\n";
    echo '        <div class="cell">Beschreibung:</div>'."\r\n";
    echo '        <div class="cell"></div>'."\r\n";
    echo '    </div>'."\r\n";
    foreach ($admin_settings as $admin_settings){
        if($admin_settings['description'] == ""){$admin_settings['description'] = "Keine Beschreibung vorhanden.";}
        echo '    <div class="row">'."\r\n";
        echo '        <div class="cell">'.$language_settings[$admin_settings['property']].'</div>'."\r\n";
        echo '        <div class="cell"><input type="text" id="value" name="value" class="form-control" value="'; echo $admin_settings['value']; echo '"></div>'."\r\n";
        echo '        <div class="cell">'.$admin_settings['description'].'</div>'."\r\n";
        echo '        <div class="cell"><input type="hidden" id="property" name="property" class="form-control" value="'.$admin_settings['property'].'" /><button class="btn btn-block" name="save" type="submit">Speichern</button></div>'."\r\n";
        echo '    </div>'."\r\n";
    }
    echo '</div>'."\r\n";
    echo '</form>'."\r\n";
} else {
	echo '<div class="alert alert-warning" role="alert">Sie haben keine Berechtigung, um diese Seite aufzurufen!</div>';
}
?>