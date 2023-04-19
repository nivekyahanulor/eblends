	<div class="main-content">
          <div class="section-body">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>EXPENSES RECORDS </h4><a href="" class="float-right btn btn-outline-primary" data-toggle="modal" data-target="#addexpenses"><i class="fa fa-plus"></i> ADD RECORD</a>
                  </div>
                  <div class="card-body">

                    <div class="table-responsive">
                      <table class="table table-striped table-bordered" id="expenses-data">
                        <thead>
                          <tr>
                            <th class="text-center">                </th>
                            <th class="text-center"> EXPENSES DETAILS    </th>
                            <th class="text-center"> EXPENSES AMOUNT   </th>
                            <th class="text-center"> EXPENSES BY        </th>
                            <th class="text-center"> EXPENSES DATE        </th>
                            <th class="text-center"> DATE ADDED      </th>
                          </tr>
                        </thead>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
         </div>
      </div>  
	  		<button class="btn btn-warning btn-sm" data-toggle="modal" id="deleteproductinfo" data-target="#deleteproduct" style="display:none;">  </button>
			<div class="modal fade" id="deleteproduct" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
						  <div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="deleteModalLabel">Delete Product</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">×</span></button>
							</div>
							<div class="modal-body">
									<form  method="post" action="<?php echo site_url('api/deleteproduct');?>">
											<input type="hidden" name="code"  id="code" class="form-control" placeholder="">
											<strong>ARE YOUR SURE TO DELETE THIS DATA ?</strong>
											<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
											<button type="submit" class="btn btn-primary">Yes</button>
											</div>
									</form>
							</div>
					  </div>
				</div>
			</div>  
			
			