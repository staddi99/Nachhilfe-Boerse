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
 * | 2016-01-08	Maximilian Stadtmüller	created                                              |
 * | 2016-01-11 Maximilian Stadtmüller	added username + mail                                |
 * | 2016-01-24	Maximilian Stadtmüller	added all                                            |
 * +-----------------------------------------------------------------------------------------+
 */
?>

<?php /* <form action="" method="post" class="float_left">
    <input name="id" type="hidden" value="<?php echo $profiledata['id'] ?>">
    <div class="table">
        <div class="row">
            <div class="cell">
                <div class="row">
                    <div class="cell"><strong>Benutzername:</strong></div>
                    <div class="cell"><?php echo $profiledata['username'] ?></div>
                </div>
                <div class="row blank"></div>
                <div class="row">
                    <div class="cell"><strong>Passwort:</strong></div>
                    <div class="cell"><input type="password" id="pwd" name="pwd" class="form-control" placeholder="Neues Passwort"></div>
                </div>
                <div class="row">
                    <div class="cell"><strong>Vorname:</strong></div>
                    <div class="cell"><input type="text" id="surname" name="surname" class="form-control" placeholder="Vorname" value="<?php echo $profiledata['surname'] ?>"></div>
                </div>
                <div class="row">
                    <div class="cell"><strong>Nachname:</strong></div>
                    <div class="cell"><input type="text" id="name" name="name" class="form-control" placeholder="Nachname" value="<?php echo $profiledata['name'] ?>"></div>
                </div>
                <div class="row">
                    <div class="cell"><strong>Geburtstag:</strong></div>
                    <div class="cell"><input type="text" id="birthday" name="birthday" class="form-control" placeholder="<?php echo $profiledata['birthday'] ?>"></div>
                </div>
            </div>
            <div class="cell">
                <div class="row">
                    <div class="cell"><strong>E-Mail-Adresse:</strong></div>
                    <div class="cell"><?php echo $profiledata['mail'] ?></div>
                </div>
                <div class="row blank"></div>
                <div class="row">
                    <div class="cell"><strong>Passwort bestätigen:</strong></div>
                    <div class="cell"><input type="password" id="pwdr" name="pwdr" class="form-control" placeholder="Neues Passwort bestätigen"></div>
                </div>
                <div class="row">
                    <div class="cell"><strong>Bundesland:</strong></div>
                    <div class="cell">
                        <select name="state" id="state"  class="form-control">
                            <option value="BW" <?php if($profiledata['state']=="BW"){echo 'selected="selected"';}else{} ?>>Baden-Württemberg</option>
                            <option value="BY" <?php if($profiledata['state']=="BY"){echo 'selected="selected"';}else{} ?>>Bayern</option>
                            <option value="BE" <?php if($profiledata['state']=="BE"){echo 'selected="selected"';}else{} ?>>Berlin</option>
                            <option value="BB" <?php if($profiledata['state']=="BB"){echo 'selected="selected"';}else{} ?>>Brandenburg</option>
                            <option value="HB" <?php if($profiledata['state']=="HB"){echo 'selected="selected"';}else{} ?>>Bremen</option>
                            <option value="HH" <?php if($profiledata['state']=="HH"){echo 'selected="selected"';}else{} ?>>Hamburg</option>
                            <option value="HE" <?php if($profiledata['state']=="HE"){echo 'selected="selected"';}else{} ?>>Hessen</option>
                            <option value="MV" <?php if($profiledata['state']=="MV"){echo 'selected="selected"';}else{} ?>>Mecklenburg-Vorpommern</option>
                            <option value="NI" <?php if($profiledata['state']=="NI"){echo 'selected="selected"';}else{} ?>>Nierdersachsen</option>
                            <option value="NW" <?php if($profiledata['state']=="NW"){echo 'selected="selected"';}else{} ?>>Nordrhein-Westfalen</option>
                            <option value="RP" <?php if($profiledata['state']=="RP"){echo 'selected="selected"';}else{} ?>>Rheinland-Pfalz</option>
                            <option value="SL" <?php if($profiledata['state']=="SL"){echo 'selected="selected"';}else{} ?>>Saarland</option>
                            <option value="SN" <?php if($profiledata['state']=="SN"){echo 'selected="selected"';}else{} ?>>Sachsen</option>
                            <option value="ST" <?php if($profiledata['state']=="ST"){echo 'selected="selected"';}else{} ?>>Sachsen-Anhalt</option>
                            <option value="SH" <?php if($profiledata['state']=="SH"){echo 'selected="selected"';}else{} ?>>Schleswig-Holstein</option>
                            <option value="TH" <?php if($profiledata['state']=="TH"){echo 'selected="selected"';}else{} ?>>Thüringen</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="cell"><strong>Postleitzahl:</strong></div>
                    <div class="cell"><input type="text" id="postal_code" name="postal_code" class="form-control" placeholder="Postleitzahl" value="<?php echo $profiledata['postal_code'] ?>"></div>
                </div>
                <div class="row">
                    <div class="cell"><strong>Adresse:</strong></div>
                    <div class="cell"><input type="text" id="address" name="address" class="form-control" placeholder="Adresse" value="<?php echo $profiledata['address'] ?>"></div>
                </div>
            </div>
        </div>
    </div>
    <br /><button class="btn btn-lg btn-primary btn-block" name="save" type="submit">Speichern</button>
</form> */ ?>

<?php
if($status_login == 1){
    echo '<form action="" method="post" class="float_left">'."\r\n";
    echo '    <input name="id" type="hidden" value="'.$profiledata['id'].'">'."\r\n";
    echo '    <div class="table">'."\r\n";
    echo '        <div class="row">'."\r\n";
    echo '            <div class="cell">'."\r\n";
    echo '                <div class="row">'."\r\n";
    echo '                    <div class="cell"><strong>Benutzername:</strong></div>'."\r\n";
    echo '                    <div class="cell">'.$profiledata['username'].'</div>'."\r\n";
    echo '                </div>'."\r\n";
    echo '                <div class="row blank"></div>'."\r\n";
    echo '                <div class="row">'."\r\n";
    echo '                    <div class="cell"><strong>Passwort:</strong></div>'."\r\n";
    echo '                    <div class="cell"><input type="password" id="pwd" name="pwd" class="form-control" placeholder="Neues Passwort"></div>'."\r\n";
    echo '                </div>'."\r\n";
    echo '                <div class="row">'."\r\n";
    echo '                    <div class="cell"><strong>Vorname:</strong></div>'."\r\n";
    echo '                    <div class="cell"><input type="text" id="surname" name="surname" class="form-control" placeholder="Vorname" value="'.$profiledata['surname'].'"></div>'."\r\n";
    echo '                </div>'."\r\n";
    echo '            </div>'."\r\n";
    echo '            <div class="cell">'."\r\n";
    echo '                <div class="row">'."\r\n";
    echo '                    <div class="cell"><strong>E-Mail-Adresse:</strong></div>'."\r\n";
    echo '                    <div class="cell">'.$profiledata['mail'].'</div>'."\r\n";
    echo '                </div>'."\r\n";
    echo '                <div class="row blank"></div>'."\r\n";
    echo '                <div class="row">'."\r\n";
    echo '                    <div class="cell"><strong>Passwort bestätigen:</strong></div>'."\r\n";
    echo '                    <div class="cell"><input type="password" id="pwdr" name="pwdr" class="form-control" placeholder="Neues Passwort bestätigen"></div>'."\r\n";
    echo '                </div>'."\r\n";
    echo '                <div class="row">'."\r\n";
    echo '                    <div class="cell"><strong>Nachname:</strong></div>'."\r\n";
    echo '                    <div class="cell"><input type="text" id="name" name="name" class="form-control" placeholder="Nachname" value="'.$profiledata['name'].'"></div>'."\r\n";
    echo '                </div>'."\r\n";
    echo '            </div>'."\r\n";
    echo '        </div>'."\r\n";
    echo '    </div>'."\r\n";
    echo '    <br /><button class="btn btn-lg btn-primary btn-block" name="save" type="submit">Speichern</button>'."\r\n";
    echo '</form>'."\r\n";
} else {
	echo '<div class="alert alert-warning" role="alert">Sie sind nicht angemeldet!</div>';
}
?>