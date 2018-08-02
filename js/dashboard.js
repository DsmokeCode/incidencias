$.post(baseurl+"cdashboard/getDashboard",
	function (data){
		var f = JSON.parse(data);
		$.each(f,function(i,item){
			$('#example1').append(

				'<tr>'+
						'<td>'+item.id_dashboard+'</td>'+
						'<td>'+item.tipo_inci+'</td>'+
						'<td>'+item.descripcion+'</td>'+
						'<td>'+item.fechareg+'</td>'+
						'<td>'+item.severidad+'</td>'+
						'<td><a href= "#" class="btn btn-block btn-success"  data-toggle="modal" data-target="#modalhistorial" onClick="selDashboard(\''+item.id_dashboard+'\');"><i class="glyphicon glyphicon-edit"></i></a></td>'+
						'</tr>'
				);
		});
	}); 


selDashboard = function(id_dashboard){
	$('#modaliddashboard').val(id_dashboard);
};



$('#modaluphistoria').click(function(){
	var iddashboard = $('#modaliddashboard').val();
	var fechareg = $('#datepicker').val();
	var observacion = $('#modalobservacion').val();
	var estado = $('#modalestado').val();
	$.post(baseurl+"cdashboard/upHistoria",	
	{
		modaliddashboard:iddashboard,
		datepicker:fechareg,
		modalobservacion:observacion,
		modalestado:estado
	},			
	function(data){
		if (data == 1) {
			alert('Se grabo');
			$('#modalcerrar').click();
			location.reload();
		}
	});
});