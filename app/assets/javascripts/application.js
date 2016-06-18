// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
	var actual= 0;
 	var gap = 2;
 	var max=0;
 	 var contexto="";

 	var $ventana = null;
 	var $ventanita = null;



 $(function(){

 	if( $('#info').text() == "options"){
 		$prev = $('#cerar');




 		$prev.on('click', function(ev){
 			location.reload();
 			
		url = "cerar";


	 	$.ajax({
				"url": url,
				"success": function(data, ts, jq){


					$magic = $('<div class="alert alert-success" role="alert">SE ceraron!</div>');
					
					$('#notice').append($magic);
					
					//buildCardInfo(data);
				},
				"error": function(jq, st, er) {
					$magic = $('<div class="alert alert-danger" role="alert">SE ceraron!</div>');
					
					$('#notice').append($magic);
					
					//console.log("ERROR",  jq, st, er);
				}
			});

	 });
 		
 	}
 	
 	if( $('#info').text() == "vista"){



	var $contenedor = $('.conte');


	var buildModal = function(prodInfo){
		$a = $('<div class="modal fade" id="myModal'+prodInfo.id+'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"></div>');
		$b = $('<div class="modal-dialog" role="document"></div>');
		$a.append($b);

		$c = $('<div class="modal-content"></div>');

		$b.append($c);

		$x = $('<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="myModalLabel">'+prodInfo.name+'</h4></div>');
		$y = $('<div class="modal-body"></div>');
		$z = $('<div class="modal-footer"><button type="button" class="btn btn-default" data-dismiss="modal">Close</button></div>');

		$c.append($x);
		$c.append($y);
		$c.append($z);
		$('.moi').append($a);
	}
 	

 	var buildProductos = function(prodInfo)  {

 		$ola = $('<p class="btn-primary btn-lg ax" data-toggle="modal" data-target="#myModal'+prodInfo.id+'"> '+prodInfo.name +'</p>')


 		$grande = $('<div class="grandex"></div>');

 		$inp = $('<input name="opt" id="opt_'+ prodInfo.id+'" value='+ prodInfo.id+' type="radio">');


 		$lab = $('<label for="age_child">'+prodInfo.name +'</label>')
		
 		$grande.append($ola);
		$grande.append($inp);
	//	$grande.append($lab);

		$contenedor.append($grande);
		buildModal(prodInfo);

		// body...
	};







	var construir = function(){		
		cargo = $('#cargo').text();
		url = "/aresponse/" + cargo;
	 	$.ajax({
				"url": url,
				"success": function(data, ts, jq){
					$contenedor.empty();
					//console.log("success", data, ts, jq);
					max= data.opciones.length;

					

					for (var i=0; i<max; i++) {

						buildProductos(data.opciones[i]);
	    
					}
					
					
					//buildCardInfo(data);
				},
				"error": function(jq, st, er) {
					//console.log("ERROR",  jq, st, er);
				}
			});

	 };



 construir();
}

});


