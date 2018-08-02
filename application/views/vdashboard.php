<section class="content-header">
	<h1>
		Dashboard <small>Consulta Dashboard</small>
	</h1>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<!-- /.box -->
			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-title">Lista de Dashboard</h3>
				</div>
			<!-- /.box-header -->
			<div class="box-body no-padding">
			<table id="example1" class="table table-condensed">
				<tbody>
					<tr>
						<th>ID</th>
						<th>TIPO INCIDENCIA</th>
						<th>DESCRIPCION</th>
						<th>FECHA REGISTRO</th>
						<th>SEVERIDAD</th>
						<th>OPCIONES</th>
					</tr>
				</tbody>
					
			</table>
			</div> 	
			<!-- /.box-body -->
			</div>
		</div>
		<!-- /.col -->



        <div class="modal fade" id="modalhistorial">
          <div class="modal-dialog ">
            <div class="modal-content">
              <div class="modal-header bg-green">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Atender Incidencia</h4>
              </div>
              <div class="modal-body">
					<form class="form-horizontal">
	      	<!-- parametros ocultos -->
						<input type="hidden" id="mhdnIdPersona">
						
						<div class="box-body">

							<div class="form-group">
							    <!-- <label class="col-sm-3 control-label">ID Dashboard</label> -->
							    <div class="col-sm-9"> 
							    	<input type="hidden" name="modal-iddashboard" class="form-control" id="modaliddashboard" placeholder="" disabled>
							    </div>
							</div>


							<div class="form-group">
							    <label class="col-sm-3 control-label">Fecha</label>
							    <div class="col-sm-9"> 
							    	<div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" name="modelfechareg" id="datepicker">
                </div>
							    </div>
							</div>

							<div class="form-group">
							    <label class="col-sm-3 control-label">Observacion</label>
							    <div class="col-sm-9"> 
							    	<textarea class="form-control" name="modalobservacion"  id="modalobservacion" rows="3" placeholder=""></textarea>
							    </div>
							</div>

							
							<div class="form-group">
							    <label class="col-sm-3 control-label">Estado</label>
							    <div class="col-sm-9">
							    	<select class="form-control" id="modalestado" name="modalestado" required>
							    		<option value="">Elija</option>
							    		<option value="2">Pendiente</option>
							    		<option value="3">Atendido</option>
							    	</select>
							    </div>
							</div>
						</div>
					</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="modalcerrar">Cerrar</button>
                <button type="button" class="btn btn-success" id="modaluphistoria">Guardar</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
		</div>


	</div>
	<!-- /.row -->
</section>



<script type="text/javascript">
	var baseurl = "<?php echo base_url(); ?>";
</script>
