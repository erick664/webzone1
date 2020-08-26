<?php

class Conexion{

	public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=tzd6rlymeboc9kv0","g9o2a51aq8nbaczd","cy3gd7pdzu9mktqp");
		return $link;

	}

}
