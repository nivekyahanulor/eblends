<style>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');


.image img {
    width: 100%;
    height: 400px
}



.image {
    position: relative;
    width: 100%;
    overflow: hidden
}

.image .overlay {
    position: absolute;
    bottom: 0;
    padding-left: 25px;
    padding-top: 15px;
    width: 100%;
    color: white;
    font-size: 20px;
}

.image .overlay::before {
    content: "";
    height: 100%;
    width: 100%;
    position: absolute;
    left: 0;
    bottom: -150px;
    opacity: 0.5;
    transition: all 0.3s ease-out
}

.image:hover .overlay {
    color: black
}


.image:hover .overlay::before {
    bottom: 0px
}
 .text-inner {
	position: absolute;
	left: 0;
	right: 0;
	top: 70%;
	-ms-transform: translateY(-50%);
	transform: translateY(-50%)
}
.text {
	position: relative;
	z-index: 10;
	color:yellow;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden
}
.uppercase{
	color:#ffff;
}
.text,
.text {
	height: 0;
	padding: 100% 0 0 0 !important;
}

</style>
<div class="">
    <div class="row">
	    <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 px-0 ">
            <div class="image"> <img src="assets/img/hero/12638797_xl.jpg" alt="">
               <div class="overlay banner-layers container">
				<div class="text dark">
					<div class="text-inner text-right">
					<h4 class="uppercase"><strong>Helthy </strong></h4>
					<h2 class="uppercase"><strong> Beverages</strong></h2>
					<h4 class="uppercase"><button class="btn-1 hero-btn1 btn-sm"> Join Now </button></h4>
					</div>
				</div><!-- text-box-inner -->
				</div><!-- .banner-inner -->
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 px-0 ">
            <div class="image"> <img src="assets/img/hero/120344628_xl.jpg" alt="">
               <div class="overlay banner-layers container">
				<div class="text dark">
					<div class="text-inner text-right">
					<h4 class="uppercase text-left"><strong> </strong></h4>
					<h2 class="uppercase text-left"><strong>Essentials</strong></h2>
					<h4 class="uppercase text-left"><button class="btn-1 hero-btn1 btn-sm"> Join Now </button></h4>
					</div>
				</div><!-- text-box-inner -->
				</div><!-- .banner-inner -->
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 px-0 ">
            <div class="image"> <img src="assets/img/hero/17801769_xl.jpg" alt="">
                 <div class="overlay banner-layers container">
				<div class="text dark">
					<div class="text-inner text-right">
					<h4 class="uppercase text-left"><strong> </strong></h4>
					<h2 class="uppercase text-left"><strong>Skin Care </strong></h2>
					<h4 class="uppercase text-left"><button class="btn-1 hero-btn1 btn-sm"> Join Now </button></h4>
					</div>
				</div><!-- text-box-inner -->
				</div><!-- .banner-inner -->
            </div>
        </div>
     
      
    </div>
</div>