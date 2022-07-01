<?php

/**
 * Template Name: HomePage Template
 *Template Post Type:  page,
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Cobold_Digital
 */

get_header();
?>

<!-- ***** Welcome Area Start ***** -->
<div class="welcome-area" id="welcome">

    <!-- ***** Header Text Start ***** -->
    <div class="header-text">
        <div class="container">
            <div class="row">
                <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
                    <h1><?php echo (get_post_meta(get_the_ID(), 'welcome_section_header_text', true)); ?></h1>
                    <p><?php echo (get_post_meta(get_the_ID(), 'welcome_section_below_text', true)); ?></p>
                    <a href="#features" class="main-button-slider">Discover More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Header Text End ***** -->
</div>
<!-- ***** Welcome Area End ***** -->

<!-- ***** Features Small Start ***** -->
<section class="section home-feature">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <?php
                    $entries = get_post_meta(get_the_ID(), 'home_feature_section_repeat_group', true);
                    foreach ((array) $entries as $key => $entry) {
                        $img = $title = $desc = $caption = '';

                        if (isset($entry['features-title'])) {
                            $title = esc_html($entry['features-title']);
                        }

                        if (isset($entry['features-title-description'])) {
                            $desc = wpautop($entry['features-title-description']);
                        }

                        if (isset($entry['features_image_id'])) {
                            $img = wp_get_attachment_image($entry['features_image_id'], 'share-pick', null, array(
                                'class' => 'thumb',
                            ));
                        }

                    ?>
                        <!-- ***** Features Small Item Start ***** -->
                        <div class="col-lg-4 col-md-6 col-sm-6 col-12" data-scroll-reveal="enter bottom move 50px over 0.6s after 0.2s">
                            <div class="features-small-item">
                                <div class="icon">
                                    <i>
                                        <?php echo $img; ?>
                                    </i>
                                </div>
                                <h5 class="features-title"><?php echo $title; ?></h5>
                                <p><?php echo $desc; ?></p>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Features Small End ***** -->

<!-- ***** Features Big Item Start ***** -->
<section class="section padding-top-70 padding-bottom-0" id="features">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-12 col-sm-12 align-self-center" data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                <?php $image = wp_get_attachment_image(get_post_meta(get_the_ID(), 'big-feature_image_id', 1), 'medium');
                echo $image; ?>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-6 col-md-12 col-sm-12 align-self-center mobile-top-fix">
                <div class="left-heading">
                    <h2 class="section-title"><?php echo (get_post_meta(get_the_ID(), 'big-feature_text', true)); ?></h2>
                </div>
                <div class="left-text">
                    <p><?php echo (get_post_meta(get_the_ID(), 'big-feature-description_text', true)); ?></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="hr"></div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Features Big Item Start ***** -->
<section class="section padding-bottom-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12 col-sm-12 align-self-center mobile-bottom-fix">
                <div class="left-heading">
                    <h2 class="section-title"><?php echo (get_post_meta(get_the_ID(), 'big-feature-section-2_text', true)); ?></h2>
                </div>
                <div class="left-text">
                    <p><?php echo (get_post_meta(get_the_ID(), 'big-feature-section-2_textareasmall', true)); ?></p>
                </div>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-5 col-md-12 col-sm-12 align-self-center mobile-bottom-fix-big" data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                <?php $image = wp_get_attachment_image(get_post_meta(get_the_ID(), 'big-feature-section-2_image_id', 1), 'medium');
                echo $image; ?>
            </div>
        </div>
    </div>
</section>
<!-- ***** Features Big Item End ***** -->
<!-- ***** Home Parallax Start ***** -->
<section class="mini" id="work-process">
    <div class="mini-content">
        <div class="container">
            <div class="row">
                <div class="offset-lg-3 col-lg-6">
                    <div class="info">
                        <h1><?php echo (get_post_meta(get_the_ID(), 'work_progress_title', true)); ?></h1>
                        <p><?php echo (get_post_meta(get_the_ID(), 'work_progress_textarea_small', true)); ?></p>
                    </div>
                </div>
            </div>

            <!-- ***** Mini Box Start ***** -->
            <div class="row">
                <?php
                $entries = get_post_meta(get_the_ID(), 'work_progress_repeat_group', true);
                foreach ((array) $entries as $key => $entry) {
                    $img = $title = $desc = $caption = '';

                    if (isset($entry['work_progress_title'])) {
                        $title = esc_html($entry['work_progress_title']);
                    }

                    if (isset($entry['work_progress_description'])) {
                        $desc = wpautop($entry['work_progress_description']);
                    }

                    if (isset($entry['work_progresst_image_id'])) {
                        $img = wp_get_attachment_image($entry['work_progresst_image_id'], 'share-pick', null, array(
                            'class' => 'thumb',
                        ));
                    }
                ?>
                    <div class="col-lg-2 col-md-3 col-sm-6 col-6">
                        <a href="#" class="mini-box">
                            <i><?php echo $img; ?></i>
                            <strong><?php echo $title; ?></strong>
                            <span><?php echo $desc; ?></span>
                        </a>
                    </div>
                <?php } ?>
            </div>
            <!-- ***** Mini Box End ***** -->
        </div>
    </div>
</section>
<!-- ***** Home Parallax End ***** -->

<!-- ***** Testimonials Start ***** -->
<section class="section" id="testimonials">
    <div class="container">
        <!-- ***** Section Title Start ***** -->
        <div class="row">
            <div class="col-lg-12">
                <div class="center-heading">
                    <h2 class="section-title"><?php echo (get_post_meta(get_the_ID(), 'testimonial_text', true)); ?></h2>
                </div>
            </div>
            <div class="offset-lg-3 col-lg-6">
                <div class="center-text">
                    <p><?php echo (get_post_meta(get_the_ID(), 'testimonial_textarea_small', true)); ?></p>
                </div>
            </div>
        </div>
        <!-- ***** Section Title End ***** -->

        <div class="row">
            <!-- ***** Testimonials Item Start ***** -->
            <?php
            $blogs_layout = get_post_meta(get_the_ID(), 'testimonial_layout_textareasmall', true);
            echo do_shortcode($blogs_layout); ?>
        </div>
    </div>
</section>
<!-- ***** Testimonials End ***** -->

<!-- ***** Pricing Plans Start ***** -->
<section class="section colored" id="pricing-plans">
    <div class="container">
        <!-- ***** Section Title Start ***** -->
        <div class="row">
            <div class="col-lg-12">
                <div class="center-heading">
                    <h2 class="section-title"><?php echo (get_post_meta(get_the_ID(), 'pricing-plan_text', true)); ?></h2>
                </div>
            </div>
            <div class="offset-lg-3 col-lg-6">
                <div class="center-text">
                    <p><?php echo (get_post_meta(get_the_ID(), 'pricing-plan_textarea_small', true)); ?></p>
                </div>
            </div>
        </div>
        <!-- ***** Section Title End ***** -->

        <div class="row">
            <?php
            $entries = get_post_meta(get_the_ID(), 'table_repeat_group', true);
            foreach ((array) $entries as $key => $entry) {

                if (isset($entry['pricing-title'])) {
                    $title = esc_html($entry['pricing-title']);
                }

                if (isset($entry['currency'])) {
                    $currency = esc_html($entry['currency']);
                }
                if (isset($entry['price'])) {
                    $price = esc_html($entry['price']);
                }
                if (isset($entry['period'])) {
                    $period = esc_html($entry['period']);
                }
                if (isset($entry['pricing_plan_list_wysiwyg'])) {
                    $details = $entry['pricing_plan_list_wysiwyg'];
                }
                if (isset($entry['pricing_plan_url'])) {
                    $url = $entry['pricing_plan_url'];
                }


            ?>
                <!-- ***** Pricing Item Start ***** -->

                <div class="col-lg-4 col-md-6 col-sm-12" data-scroll-reveal="enter bottom move 50px over 0.6s after 0.2s">
                    <div class="pricing-item">
                        <div class="pricing-header">
                            <h3 class="pricing-title"><?php echo $title; ?></h3>
                        </div>
                        <div class="pricing-body">
                            <div class="price-wrapper">
                                <span class="currency"><?php echo $currency; ?></span>
                                <span class="price"><?php echo $price; ?></span>
                                <span class="period"><?php echo $period; ?></span>
                            </div>
                            <?php echo $details; ?>
                        </div>
                        <div class="pricing-footer">
                            <a href="<?php echo $url; ?>" class="main-button">Purchase Now</a>
                        </div>
                    </div>
                </div>
                <!-- ***** Pricing Item End ***** -->
            <?php } ?>
        </div>
    </div>
</section>
<!-- ***** Pricing Plans End ***** -->

<!-- ***** Counter Parallax Start ***** -->
<section class="counter">
    <div class="content">
        <div class="container">
            <div class="row">
                <?php
                $entries = get_post_meta(get_the_ID(), 'wiki_test_repeat_group', true);
                $title = $secondtitle = '';

                foreach ((array) $entries as $key => $entry) {
                    if (isset($entry['title'])) {
                        $title = esc_html($entry['title']);
                    }

                    if (isset($entry['second-title'])) {
                        $secondtitle = wpautop($entry['second-title']);
                    }

                ?>

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="count-item decoration-bottom">
                            <strong><?php echo $title; ?></strong>
                            <span><?php echo $secondtitle; ?></span>
                        </div>
                    </div>

                <?php
                }

                ?>

            </div>
        </div>
    </div>
</section>
<!-- ***** Counter Parallax End ***** -->

<!-- ***** Blog Start ***** -->
<section class="section" id="blog">
    <div class="container">
        <!-- ***** Section Title Start ***** -->
        <div class="row">
            <div class="col-lg-12">
                <div class="center-heading">
                    <h2 class="section-title"><?php echo (get_post_meta(get_the_ID(), 'blogs-section_text', true)); ?></h2>
                </div>
            </div>
            <div class="offset-lg-3 col-lg-6">
                <div class="center-text">
                    <p><?php echo (get_post_meta(get_the_ID(), 'blogs_section_textarea_small', true)); ?></p>
                </div>
            </div>
        </div>
        <!-- ***** Section Title End ***** -->

        <div class="row">
            <?php
            $blogs_layout = get_post_meta(get_the_ID(), 'blogs_layout_wysiwyg', true);
            echo do_shortcode($blogs_layout); ?>
        </div>
    </div>
</section>
<!-- ***** Blog End ***** -->

<!-- ***** Contact Us Start ***** -->
<section class="section colored" id="contact-us">
    <div class="container">
        <!-- ***** Section Title Start ***** -->
        <div class="row">
            <div class="col-lg-12">
                <div class="center-heading">
                    <h2 class="section-title"><?php echo (get_post_meta(get_the_ID(), 'contactus_main_heading', true)); ?></h2>
                </div>
            </div>
            <div class="offset-lg-3 col-lg-6">
                <div class="center-text">
                    <p><?php echo (get_post_meta(get_the_ID(), 'contactus_heading_description', true)); ?></p>
                </div>
            </div>
        </div>
        <!-- ***** Section Title End ***** -->

        <div class="row">
            <!-- ***** Contact Text Start ***** -->
            <div class="col-lg-4 col-md-6 col-sm-12">
                <h5 class="margin-bottom-30"><?php echo (get_post_meta(get_the_ID(), 'contactus_heading', true)); ?></h5>
                <div class="contact-text">
                    <?php echo (get_post_meta(get_the_ID(), 'contact_section_description', true)); ?>
                </div>
            </div>
            <!-- ***** Contact Text End ***** -->

            <!-- ***** Contact Form Start ***** -->
            <div class="col-lg-8 col-md-6 col-sm-12">
                <div class="contact-form">

                    <?php
                    $text = get_post_meta(get_the_ID(), 'contact-form-7', true);
                    echo do_shortcode($text); ?>
                </div>
            </div>
            <!-- ***** Contact Form End ***** -->
        </div>
    </div>
</section>
<!-- ***** Contact Us End ***** -->
<?php
get_footer();
