<?php
	
include('header.php');
include('nav.php');
	
?>
 <main>

        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/contact_hero.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>PRODUCTS</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<br><br>
            <div class="container">
				<?php if(isset($_GET['Avocado'])){?>
				<div class="row wow fadeInLeft animated animated" data-wow-duration="500ms" data-wow-delay="900ms" style="visibility: visible; animation-duration: 500ms; animation-delay: 900ms; animation-name: fadeInLeft;">
				<div class="container">
					<div class="card-transparent" >
						<div class="card-body" >
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-6">
									<div class="white-box text-center"><img src="assets/img/avocado.png" style="width:430px; height:600px;background-repeat:no-repeat;background-size:contain;background-position:center;width:100%" class="img-responsive"></div>
								</div>
								

							</div>
						</div>
					</div>
				</div>
				</div>
				<?php } if(isset($_GET['Elixir-Juice'])){ ?>
				
				<div class="row wow fadeInRight animated animated" data-wow-duration="500ms" data-wow-delay="900ms" style="visibility: visible; animation-duration: 500ms; animation-delay: 900ms; animation-name: fadeInRight;">
				<div class="container">
					<div class="card-transparent" >
						<div class="card-body">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-6">
									<div class="white-box text-center"><img src="assets/img/elixir.png" style="width:430px; height:600px;background-repeat:no-repeat;background-size:contain;background-position:center;width:100%" class="img-responsive"></div>
								</div>
								

							</div>
						</div>
					</div>
				</div>
				</div>
				<?php } if(isset($_GET['Protek'])){ ?>
				<div class="row wow fadeInLeft animated animated" data-wow-duration="500ms" data-wow-delay="900ms" style="visibility: visible; animation-duration: 500ms; animation-delay: 900ms; animation-name: fadeInLeft;">
				<div class="container">
					<div class="card-transparent" >
						<div class="card-body" >
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-6">
									<div class="white-box text-center"><img src="assets/img/protek.png" style="width:430px; height:600px;background-repeat:no-repeat;background-size:contain;background-position:center;width:100%" class="img-responsive"></div>
								</div>
							

							</div>
						</div>
					</div>
				</div>
				</div>
				<?php } if(isset($_GET['Empathy-Fit'])){ ?>
				<div class="row wow fadeInLeft animated animated" data-wow-duration="500ms" data-wow-delay="900ms" style="visibility: visible; animation-duration: 500ms; animation-delay: 900ms; animation-name: fadeInLeft;">
				<div class="container">
					<div class="card-transparent" >
						<div class="card-body" >
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-6">
									<div class="white-box text-center"><img src="assets/img/empathyfit.png" style="width:430px; height:600px;background-repeat:no-repeat;background-size:contain;background-position:center;width:100%" class="img-responsive"></div>
								</div>
							
							</div>
						</div>
					</div>
				</div>
				</div>
				<?php } if(isset($_GET['Elixir-Oil'])){ ?>
				<div class="row wow fadeInLeft animated animated" data-wow-duration="500ms" data-wow-delay="900ms" style="visibility: visible; animation-duration: 500ms; animation-delay: 900ms; animation-name: fadeInLeft;">
				<div class="container">
					<div class="card-transparent" >
						<div class="card-body" >
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-6">
									<div class="white-box text-center"><img src="assets/img/elixiroil.png" style="width:430px; height:600px;background-repeat:no-repeat;background-size:contain;background-position:center;width:100%" class="img-responsive"></div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
				</div>
				<?php }  ?>
			
            <br>
            <br>
        </div>

  <?php include('footer.php');?> 