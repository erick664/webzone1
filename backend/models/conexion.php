<?php

class Conexion{

	public function conectar(){

		$link = new PDO("mysql:host=nwhazdrp7hdpd4a4.cbetxkdyhwsb.us-east-1.rds.amazonaws.com;dbname=tzd6rlymeboc9kv0","g9o2a51aq8nbaczd","cy3gd7pdzu9mktqp");
		return $link;

	}

}
