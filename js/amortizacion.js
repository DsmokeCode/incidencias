$.post(baseurl+"camortizacion/getAmortizacion",
	{},
	function (data){
		var c = JSON.parse(data);
		$.each(c,function(i,item){
			$('#example1').append(

				'<tr>'+
						'<td>'+item.codalu+'</td>'+
						'<td>'+item.periodo+'</td>'+
						'<td>'+item.escuela+'</td>'+
						'<td>'+item.codigo_concepto+'</td>'+
						'<td>'+item.ri_banco+'</td>'+
						'<td>'+item.fecha_amortizacion+'</td>'+
						'<td>'+item.monto+'</td>'+
						'</tr>'
				);
		});
	});


