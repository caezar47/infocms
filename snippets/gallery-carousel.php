<script>
	var slider_interval=setInterval(rotate_slide,9000);
	function rotate_slide() {
		var slider=$('#sert-slider-box .slide');
		slider.eq(0).hide().insertAfter(slider.eq(-1));
		slider.eq(1).fadeIn('fast');
	}
	$(document).ready(function() {		
		$('.slider-box .slider-inner .slide').hide();
		$('.slider-box .slider-inner .slide').eq(0).show();	
		$('.slider-box .slider-indication .left').on('click',function(){
			var inner=$('.slider-box .slider-inner').eq(0);
			var sv=inner.find('.slide:visible').eq(0);
			var last=inner.find('.slide').eq(-1);
			sv.hide();
			last.insertBefore(sv).show();
		});
		$('.slider-box .slider-indication .right').on('click',function(){
			var inner=$('.slider-box .slider-inner').eq(0);
			var sv=inner.find('.slide:visible').eq(0);
			sv.hide().insertAfter(inner.find('.slide').eq(-1));
			inner.find('.slide').eq(0).show();
		});	
	});
</script>
<div class="slider-box" id="sert-slider-box">
	<div class="title">Как это было?</div>
	<div class="slider-indication">
		<div class="but left"><span class="glyphicon glyphicon-chevron-left"></span></div>
		<div class="but right"><span class="glyphicon glyphicon-chevron-right"></span></div>
	</div>
	<div class="slider-inner">
	<?
		$imgs=fetchAll("SELECT * FROM fotogal WHERE status='3' AND id_razdel='1' ORDER BY position LIMIT 24");
		$imgs=array_chunk($imgs,4);
		if(count($imgs)) {
			foreach($imgs as $img_slide) {
			?>
		<div class="slide row">
		<?php
			foreach($img_slide as $img) {
			?>
			<div class="slide-echo col-lg-3 col-md-3 col-sm-3 col-xs-3">
				<a class="fancybox-buttons thumbnail" data-fancybox-group="button" href="<?=$img['foto']?>">
					<img class="img-responsive center-block" src="<?=strtr($img['foto'],array('.jpeg'=>'_sm.jpeg'));?>" alt="">
				</a>
			</div>
			<?
				}
		?>
		</div>
			<?
				}
			}
		?>								
	</div>	
	<div class="clearfix"></div>
</div>