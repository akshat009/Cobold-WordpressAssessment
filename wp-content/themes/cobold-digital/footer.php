<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Cobold_Digital
 */

?>

<!-- ***** Footer Start ***** -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<ul class="social">
					<?php $url5 = get_post_meta(get_the_ID(), 'text_dribbleurl', true);
					$url4 = get_post_meta(get_the_ID(), 'text_rssurl', true);
					$url3 = get_post_meta(get_the_ID(), 'text_linkedinurl', true);
					$url2 = get_post_meta(get_the_ID(), 'text_twitterurl', true);
					$url1 = get_post_meta(get_the_ID(), 'text_facebookurl', true);
					?>
					<li><a href="<?php echo $url1; ?>"><i class="fa fa-facebook"></i></a></li>
					<li><a href="<?php echo $url2; ?>"><i class="fa fa-twitter"></i></a></li>
					<li><a href="<?php echo $url3; ?>"><i class="fa fa-linkedin"></i></a></li>
					<li><a href="<?php echo $url4; ?>"><i class="fa fa-rss"></i></a></li>
					<li><a href="<?php echo $url5; ?>"><i class="fa fa-dribbble"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p class="copyright">
					<?php
					$text = get_post_meta(get_the_ID(), 'copyright_text_wysiwyg', true);
					echo $text; ?>
				</p>
			</div>
		</div>
	</div>
</footer>
<?php wp_footer(); ?>
<!-- jQuery -->

</body>

</html>