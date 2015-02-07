{literal}
<style>
.region {
	fill:yellow;
	stroke:red;
	stroke-width:0.2;
	}
.region:hover,.region-active {
	fill:black;
	}
.region-a {
	padding:3px;
	}
.region-a-hover {
	color:red;
	background-color:black;
	}
</style>
<script>
$(document).ready(function(){
	$('.region').on('click',function(){
		//var id=$(this).attr('data-id');
		//location.href='?action=view&id='+id;
		if($(this).hasClass('region-active')) {
			$(this).removeClass('region-active');
			} else {
				$(this).addClass('region-active');
				}
		});
	$('.region').hover(
		function(){
			$('.region-a[data-id="'+$(this).attr('data-id')+'"]').addClass('region-a-hover');
			},
		function(){
			$('.region-a').removeClass('region-a-hover');
			}
		);
	});
</script>
{/literal}

<div>
<svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" width="475px" height="407px" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" viewBox="0 0 90.9857 77.9426" xmlns:xlink="http://www.w3.org/1999/xlink">
	<g id="Layer_x0020_1">
	
{foreach name=cycle item=public from=$tData}
	
	<path class="region" data-id="{$public.id}" title="{$public.title}" d="{$public.svg}" />
	
{/foreach}

	</g>
</svg>
</div>

<div>
{foreach name=cycle item=public from=$tData}
	
	<a href="?action=view&id={$public.id}" class="region-a" data-id="{$public.id}" >{$public.title}</a>
	
{/foreach}
</div>