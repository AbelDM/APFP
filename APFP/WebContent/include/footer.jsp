<div id="footerwrap">
	 	<div class="container">
		 	<div class="row">
		 		<div class="col-lg-4">
		 			<div class="hline-w"></div>
										<h4><p class="fa fa-long-arrow-right"></p>
										<a href='https://www.lineauno.pe/cultura-linea-1/' title='Cultura LÍNEA 1'> Cultura LÍNEA 1</a></h4>
										<h4><p class="fa fa-long-arrow-right"></p>
										<a href='https://www.lineauno.pe/trabaja-con-nosotros/' title='Trabaja con nosotros'> Trabaja con nosotros</a></h4>
										<h4><p class="fa fa-long-arrow-right"></p>
										<a href='https://www.lineauno.pe/landing/division-comercial/' title='División comercial'> División comercial</a></h4>
										<h4><p class="fa fa-long-arrow-right"></p>
										<a href='https://www.lineauno.pe/quienes-somos/' title='Quiénes somos'> Quiénes somos</a></h4>
										<h4><p class="fa fa-long-arrow-right"></p>
										<a href='https://www.lineauno.pe/enlaces-de-interes/' title='Enlaces de interés'> Enlaces de interés</a></h4>
										<h4><p class="fa fa-long-arrow-right"></p>
										<a href='https://www.lineauno.pe/terminos-y-condiciones/' title='Términos y Condiciones'> Términos y Condiciones</a></h4>
										<h4><p class="fa fa-long-arrow-right"></p>
										<a href='https://www.lineauno.pe/direccion-oficinas-y-modulos-de-atencion/' title='Cultura LÍNEA 1'> Oficinas y Módulos de Atención</a></h4>
											 			
		 		</div>
		 		<div class="col-lg-4">
		 			<div class="hline-w"></div>
		 			<h4>Centro de Atención Telefónica </h4>
					<h3 class="phone"><p class="fa fa-phone"></p> 0-800-111-21</h3>								 
								   
						<h4>Síguenos en: <a href="#"> <i class="fa fa-facebook"></i></a>
		 				<a href="#"><i class="fa fa-youtube-square"></i></a>
		 				<a href="#"><i class="fa fa-twitter"></i></a></h4>
		 				
		 				

		 		</div>
		 		<div class="col-lg-4">
		 		<div class="hline-w"></div>
		 			<h4>Aplicación Móvil</h4>
						<p>
							Descarga nuestra aplicación móvil desde:
						</p>
						<p>
							<a href="https://play.google.com/store/apps/details?id=com.focusit.linea_1" target='_blank'  title="">
								<img src="assets/img/googlePlay.png" alt="">
								
							</a>
							<a href="https://itunes.apple.com/us/app/l%C3%ADnea-1/id1437551833?l=es&ls=1&mt=8" target='_blank' >
								<img src="assets/img/appStore.png" alt="">
							</a>
						</p>
		 		</div>
		 	
		 	</div><! --/row -->
	 	</div><! --/container -->
	 </div><! --/footerwrap -->
	 
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/retina-1.1.0.js"></script>
	<script src="assets/js/jquery.hoverdir.js"></script>
	<script src="assets/js/jquery.hoverex.min.js"></script>
	<script src="assets/js/jquery.prettyPhoto.js"></script>
  	<script src="assets/js/jquery.isotope.min.js"></script>
  	<script src="assets/js/custom.js"></script>
  	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  	<script src="//maps.googleapis.com/maps/api/js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="script.js"></script>
  	<script type="text/javascript">
  	
  	
    $(function() {

        $('#login-form-link').click(function(e) {
    		$("#login-form").delay(100).fadeIn(100);
     		$("#register-form").fadeOut(100);
    		$('#register-form-link').removeClass('active');
    		$(this).addClass('active');
    		e.preventDefault();
    	});
    	$('#register-form-link').click(function(e) {
    		$("#register-form").delay(100).fadeIn(100);
     		$("#login-form").fadeOut(100);
    		$('#login-form-link').removeClass('active');
    		$(this).addClass('active');
    		e.preventDefault();
    	});

    });
    
    $(document).ready(function() {
    	  var map = null;
    	  var myMarker;
    	  var myLatlng;

    	  function initializeGMap(lat, lng) {
    	    myLatlng = new google.maps.LatLng(lat, lng);

    	    var myOptions = {
    	      zoom: 12,
    	      zoomControl: true,
    	      center: myLatlng,
    	      mapTypeId: google.maps.MapTypeId.ROADMAP
    	    };

    	    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    	    myMarker = new google.maps.Marker({
    	      position: myLatlng
    	    });
    	    myMarker.setMap(map);
    	  }

    	  // Re-init map before show modal
    	  $('#myModal').on('show.bs.modal', function(event) {
    	    var button = $(event.relatedTarget);
    	    initializeGMap(button.data('lat'), button.data('lng'));
    	    $("#location-map").css("width", "100%");
    	    $("#map_canvas").css("width", "100%");
    	  });

    	  // Trigger map resize event after modal shown
    	  $('#myModal').on('shown.bs.modal', function() {
    	    google.maps.event.trigger(map, "resize");
    	    map.setCenter(myLatlng);
    	  });
    	});

    </script>


  </body>
</html>