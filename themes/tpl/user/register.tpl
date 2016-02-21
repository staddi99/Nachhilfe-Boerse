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
if($settings['register_enabled'] == 1){
    echo '<form action="" method="post" class="form-signin">'."\r\n";
    echo '    <h1 class="form-signin-heading">Registrieren</h1>'."\r\n";
    echo '    <label for="username" class="sr-only">Benutzername</label>'."\r\n";
    echo '    <input type="text" id="username" name="username" class="form-control" placeholder="Benutzername" required autofocus>'."\r\n";
    echo '    <label for="mail" class="sr-only">E-Mail-Adresse</label>'."\r\n";
    echo '    <input type="email" id="mail" name="mail" class="form-control" placeholder="E-Mail-Adresse" required>'."\r\n";
    echo '    <label for="surname" class="sr-only">Vorname</label>'."\r\n";
    echo '    <input type="text" id="surname" name="surname" class="form-control" placeholder="Vorname" required>'."\r\n";
    echo '    <label for="name" class="sr-only">Nachname</label>'."\r\n";
    echo '    <input type="text" id="name" name="name" class="form-control" placeholder="Nachname" required>'."\r\n";
    echo '    <label for="pwd" class="sr-only">Passwort</label>'."\r\n";
    echo '    <input type="password" id="pwd" name="pwd" class="form-control" placeholder="Passwort" required>'."\r\n";
    echo '    <label for="pwdr" class="sr-only">Password wiederholen</label>'."\r\n";
    echo '    <input type="password" id="pwdr" name="pwdr" class="form-control" placeholder="Passwort wiederholen" required><br />'."\r\n";
    echo '    <button class="btn btn-lg btn-primary btn-block" name="register" type="submit">Registrieren</button>'."\r\n";
    echo '</form>'."\r\n";
} else {
	echo '<div class="alert alert-warning" role="alert">Eine Registrierung ist zur Zeit nicht verfügbar!</div>';
}
?>