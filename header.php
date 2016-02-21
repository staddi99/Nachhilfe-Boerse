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
 * | 2015-12-05	Maximilian Stadtmüller	created                                              |
 * | 2015-12-06	Maximilian Stadtmüller	added navbar                                         |
 * | 2016-01-05	Maximilian STadtmüller	added user-navbar                                    |
 * | 2016-01-08 Maximilian Stadtmüller	navbar-test only for Userid 1                        |
 * +-----------------------------------------------------------------------------------------+
 */
?>
<?php if(in_array("debug", $flags)){echo '<pre>'; print_r($userdata); echo '</pre>';} ?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Maximilian Stadtmüller">
        
        
        <link rel="icon" href="/favicon.ico">

        <title><?php echo $language[$incurl]; ?> - <?php echo $settings['title']; ?></title>
        
        <!-- Bootstrap core CSS -->
        <link href="/themes/css/bootstrap.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="/themes/css/<?php if($mobile == true){echo "custom_mobile.css";}else{echo "custom.css";} ?>" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-fixed-top navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/"><?php echo $settings['title']; ?></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li<?php if(strpos($incurl,'startseite') !== false){echo ' class="active"';}else{}; ?>><a href="/startseite">Startseite</a></li>
                        <li<?php if(strpos($incurl,'boerse') !== false){echo ' class="active"';}else{}; ?>><a href="/boerse/list">Angebote</a></li>
                        <?php
                        if($status_login == 1){
							echo '<li'; if(strpos($incurl,'user/profile') !== false){echo ' class="active"';}else{}; echo'><a href="/user/profile">Profil</a></li>'; echo "\r\n";
						}
                        ?>
                        <li<?php if(strpos($incurl,'impressum') !== false){echo ' class="active"';}else{}; ?>><a href="/impressum">Impressum</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <?php
						if(in_array("admin", $flags)){
							echo '<li'; if(strpos($incurl,'admin') !== false){echo ' class="active"';}else{}; echo'><a href="/admin/settings">Administration</a></li>'; echo "\r\n";
						}
						if(in_array("test", $flags)){
							echo '<li'; if(strpos($incurl,'test') !== false){echo ' class="active"';}else{}; echo'><a href="/test">Test</a></li>'; echo "\r\n";
						}
						if($status_login == 0){
							if($settings['register_enabled'] == 1){echo '<li'; if(strpos($incurl,'user/register') !== false){echo ' class="active"';}else{}; echo'><a href="/user/register">Registrieren</a></li>';}
							echo '<li'; if(strpos($incurl,'user/login') !== false){echo ' class="active"';}else{}; echo '><a href="/user/login">Anmelden</a></li>'; echo "\r\n";
						}else{
							echo '<li'; if(strpos($incurl,'user/logout') !== false){echo ' class="active"';}else{}; echo '><a href="/user/logout">Abmelden</a></li>'; echo "\r\n";
						}
						?>
                    </ul>
                </div><!-- /.nav-collapse -->
<?php if(strpos($incurl,'boerse') !== false && $status_login == 1){
	echo '                <div id="navbar" class="collapse navbar-collapse">'; echo "\r\n";
	echo '                    <ul class="nav navbar-nav">'; echo "\r\n";
	echo '                        <li role="presentation"'; if($incurl == "boerse/list"){echo ' class="active"';}else{}; echo '><a href="/boerse/list">Angebote</a></li>'; echo "\r\n";
	echo '                        <li role="presentation"'; if($incurl == "boerse/add"){echo ' class="active"';}else{}; echo '><a href="/boerse/add">Angebot hinzufügen</a></li>'; echo "\r\n";
	echo '                    </ul>'; echo "\r\n";
	echo '                </div>'; echo "\r\n";}else{}; ?>
<?php if(strpos($incurl,'admin') !== false && $status_login == 1){
	echo '                <div id="navbar" class="collapse navbar-collapse">'; echo "\r\n";
	echo '                    <ul class="nav navbar-nav">'; echo "\r\n";
	echo '                        <li role="presentation"'; if($incurl == "admin/settings"){echo ' class="active"';}else{}; echo '><a href="/admin/settings">Einstellungen</a></li>'; echo "\r\n";
	echo '                        <li role="presentation"'; if($incurl == "admin/flags"){echo ' class="active"';}else{}; echo '><a href="/admin/flags">Rechte</a></li>'; echo "\r\n";
	echo '                    </ul>'; echo "\r\n";
	echo '                </div>'; echo "\r\n";}else{}; ?>
            </div><!-- /.container -->
        </nav><!-- /.navbar -->
        <div class="container">
            <br />
<?php if(isset($_COOKIE['message'])){echo "            ".$_COOKIE['message']; setcookie("message", "", time()-3600, "/", "nachhilfe.staddi99.ovh"); echo "\r\n";} ?>
            <h1><?php echo $language[$incurl]; ?></h1>
