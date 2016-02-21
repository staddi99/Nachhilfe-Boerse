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
 * +-----------------------------------------------------------------------------------------+
 */
?>
<h3>Infos</h3>
<p>Auf dieser Seite können Sie sich nach Nachhilfestunden umsehen und die Studenten, Schüler oder auch Lehrer direkt über Ihre E-Mail-Adresse anschreiben.</p>
<p>Sie können auch eigene Angebote für Nachhilfestunden erstellen, damit andere Sie schneller finden und Kontakt mit Ihnen aufnehmen können. Um Angebote erstellen zu können, müssen Sie sich erst registrieren. Dazu gehen Sie oben rechts auf Registrieren und geben Ihren gewünschten Benuternamen, Ihre E-Mail-Adresse, Ihren Vor- und Zunamen und ein Passwort ein. Dann können Sie auf der Seite Angebote eine Unterseite öffnen und dort Ihr Angebot erstellen.</p>

<h3>Neuste Angebote</h3>
<div class="table">
<?php
if($mobile == false){
	echo '    <div class="row">'."\r\n";
	foreach ($offers as $offers){
		$price = $offers['price']/100;
		if($price == 0){$price = "Auf Anfrage";}else{$price = $price.' €';}
		if($offers['comment'] == ""){$offers['comment'] = "Kein Zusatz vorhanden";}
		echo '        <div class="cell">'."\r\n";
		echo '            <div class="cell">'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Name:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$offers['contact']['surname'].' '.$offers['contact']['name'].'</div>'."\r\n"	;
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>E-Mail-Adresse:</strong></div>'."\r\n";
		echo '                    <div class="cell"><a href="mailto://'.$offers['contact']['mail'].'">'.$offers['contact']['mail'].'</a></div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Fach:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$language[$offers['subject']].'</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Stundeneinheit:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$offers['hour_unit'].' Minuten</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Preis / Stunde:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$price.'</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Zusatz:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$offers['comment'].'</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '            </div>'."\r\n";
		echo '        </div>'."\r\n";
		echo '        <br />'."\r\n";
	}
    echo '    </div>'."\r\n";
} elseif($mobile == true) {
	foreach ($offers as $offers){
		$price = $offers['price']/100;
		if($price == 0){$price = "Auf Anfrage";}else{$price = $price.' €';}
		if($offers['comment'] == ""){$offers['comment'] = "Kein Zusatz vorhanden";}
		echo '        <div class="row">'."\r\n";
		echo '            <div class="cell">'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Name:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$offers['contact']['surname'].' '.$offers['contact']['name'].'</div>'."\r\n"	;
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>E-Mail-Adresse:</strong></div>'."\r\n";
		echo '                    <div class="cell"><a href="mailto://'.$offers['contact']['mail'].'">'.$offers['contact']['mail'].'</a></div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Fach:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$language[$offers['subject']].'</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Stundeneinheit:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$offers['hour_unit'].' Minuten</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Preis / Stunde:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$price.'</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '                <div class="row">'."\r\n";
		echo '                    <div class="cell"><strong>Zusatz:</strong></div>'."\r\n";
		echo '                    <div class="cell">'.$offers['comment'].'</div>'."\r\n";
		echo '                </div>'."\r\n";
		echo '            </div>'."\r\n";
		echo '        </div>'."\r\n";
		echo '        <br />'."\r\n";
	}
}
?>
</div>
