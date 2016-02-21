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

//$pdo = new PDO('mysql:host='.$pdoconfig['host'].';dbname='.$pdoconfig['db'], $pdoconfig['user'], $pdoconfig['password']);

class myPDO{
	
	private $host		= DB_HOST;
    private $user		= DB_USER;
    private $pwd		= DB_PASS;
    private $dbname		= DB_NAME;
	
	private $dbh;
	private $error;
	private $stmt;
	
	public function __construct(){
		// Set DSN
		$dsn = 'mysql:host=' . $this->host . ';dbname=' . $this->dbname;
		// Set options
		$options = array(
			PDO::ATTR_PERSISTENT    => true,
			PDO::ATTR_ERRMODE       => PDO::ERRMODE_EXCEPTION
		);
		// Create a new PDO instanace
		try{
			$this->dbh = new PDO($dsn, $this->user, $this->pwd, $options);
		}
		// Catch any errors
		catch(PDOException $e){
			$this->error = $e->getMessage();
		}
	}
	
	public function query($query){
		$this->stmt = $this->dbh->prepare($query);
	}
	
	public function bind($param, $value, $type = null){
		if (is_null($type)) {
			switch (true) {
				case is_int($value):
					$type = PDO::PARAM_INT;
					break;
				case is_bool($value):
					$type = PDO::PARAM_BOOL;
					break;
				case is_null($value):
					$type = PDO::PARAM_NULL;
					break;
				default:
					$type = PDO::PARAM_STR;
			}
		}
		$this->stmt->bindValue($param, $value, $type);
	}
	
	public function execute(){
		return $this->stmt->execute();
	}
	
	public function fetch_array($query){
		$this->query($query);
		$this->execute();
		return $this->stmt->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public function fetch_single($query){
		$this->query($query);
		$this->execute();
		return $this->stmt->fetch(PDO::FETCH_ASSOC);
	}
	
	public function insert($query){
		$this->query($query);
		$this->execute();
	}
	
	public function update($query){
		$this->query($query);
		$this->execute();
	}
	
	public function rowCount(){
		return $this->stmt->rowCount();
	}
	
	public function lastInsertId(){
		return $this->dbh->lastInsertId();
	}
	
	public function beginTransaction(){
		return $this->dbh->beginTransaction();
	}
	
	public function endTransaction(){
		return $this->dbh->commit();
	}
	
	public function cancelTransaction(){
		return $this->dbh->rollBack();
	}
	
	public function debugDumpParams(){
		return $this->stmt->debugDumpParams();
	}
}

$pdo = new myPDO();

?>