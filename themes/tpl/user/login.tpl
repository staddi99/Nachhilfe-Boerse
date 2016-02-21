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

<form action="" method="post" class="form-signin">
    <label for="username" class="sr-only">Benutzername</label>
    <input type="text" id="username" name="username" class="form-control" placeholder="Benutzername" required autofocus>
    <label for="pwd" class="sr-only">Passwort</label>
    <input type="password" id="pwd" name="pwd" class="form-control" placeholder="Passwort" required>
    <div class="checkbox">
        <label>
            <input type="checkbox" name="remember-me" value="1"> Angemeldet bleiben
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" name="login" type="submit">Anmelden</button>
</form>
