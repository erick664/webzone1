<footer class="row" id="contactenos">

	<hr>
	
	<h1 class="text-center text-info"><b>Contactanos </b></h1>

	<hr>
	
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
	
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3370.0915284372377!2d-117.0437138845608!3d32.363090112281874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80d931a8542a089f%3A0x23fc781dbb32d573!2sOaxaca%201042%2C%20Constituci%C3%B3n%20(Ampl.%20Constituci%C3%B3n)%2C%2022710%20Rosarito%2C%20B.C.!5e0!3m2!1sen!2smx!4v1597526184564!5m2!1sen!2smx" width="100%"  frameborder="0" style="border:0" allowfullscreen></iframe>

		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jumbotron">

    		<h4 class="blockquote-reverse text-primary">
    			<ul>
	              <li><span class="glyphicon glyphicon-phone"></span>  661 107 9852</li>
	              <li><span class="glyphicon glyphicon-map-marker"></span> 1042 Oaxaca, Rosarito, Baja California. </li>
	              <li><span class="glyphicon glyphicon-envelope"></span> ciberzonerosarito@hotmail.com</li>    
	          	</ul>      
    		</h4>

			</div>

	</div>

	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="formulario" >

		<ol>
    		<li>
        		<a href="https://www.facebook.com/CIBERZONE1/" target="_blank">
          		<i class="fa fa-facebook" style="font-size:24px;"></i>  
       		 	</a>
   			</li>

    	
			</ol>

			<form method="post" onsubmit="return validarMensaje()">

			    <input type="text" class="form-control" id="nombre" name="nombre"  placeholder="Nombre" required>

			    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>

			    <textarea name="mensaje" id="mensaje" cols="30" rows="10" placeholder="Contenido del Mensaje" class="form-control" required></textarea>

			 
			  	<input type="submit" class="btn btn-default" value="Enviar">
		</form>

		<?php

		$mensajes = new MensajesController();
		$mensajes -> registroMensajesController();

		?>
				
	</div>

</footer>
