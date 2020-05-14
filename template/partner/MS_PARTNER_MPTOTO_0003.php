<?php 
	$doi_tac = $action->getList('trademark', '', '', 'id', 'asc', '', '', '');
?>
<style>
	
</style>
<section class="produce-home">
    <div class="container">
        <div class="row">
        	<h1 class="title-produce-home text-center" style="padding-bottom: 0;">***</h1>
        	<div style="text-align: center;">
        		<img src="/images/hanoirack/tay.jpg" style="width: 60px;">
        	</div>
        	
        	<div class="content-produce-home">
    			<ul class="list-logo">
    				<div data-speed="100" data-direction="left" class='marquee' width="100%" >
    					<?php foreach ($doi_tac as $item) { ?>
	        			<li><a href="" title=""><img src="/images/<?= $item['image'] ?>" alt=""></a></li>
	        			<?php } ?>
	        		</div>
        		</ul>
        	</div>
        </div>
    </div>
</section>
<script src="/plugin/jquery/jquery.marquee.js"></script>
<script src="/plugin/jquery/jquery.marquee.min.js"></script>
<script>
	$('.marquee').marquee({
		speed: 50,
		gap: 150,
		delayBeforeStart: 0,
		direction: 'left',
		duplicated: true,
		pauseOnHover: true
	});
</script> 