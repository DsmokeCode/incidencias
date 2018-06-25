$.post(baseurl+"chistorialcitas/getHistorialcitas",
	{},
	function (data){
		var f = JSON.parse(data);
		$.each(f,function(i,item){
			$('#example1').append(

				'<tr>'+
						'<td>'+item.nomdoc+'</td>'+
						'<td>'+item.espe+'</td>'+
						'<td>'+item.area+'</td>'+
						'<td>'+item.fecha+'</td>'+
						'<td>'+item.hora+'</td>'+
						'</tr>'
				);
		});
	});


