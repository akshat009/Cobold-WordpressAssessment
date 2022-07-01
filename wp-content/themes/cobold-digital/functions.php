<?php

/**
 * Cobold Digital functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Cobold_Digital
 */

if (!defined('_S_VERSION')) {
	// Replace the version number of the theme on each release.
	define('_S_VERSION', '1.0.0');
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function cobold_digital_setup()
{
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on Cobold Digital, use a find and replace
		* to change 'cobold-digital' to the name of your theme in all the template files.
		*/
	load_theme_textdomain('cobold-digital', get_template_directory() . '/languages');

	// Add default posts and comments RSS feed links to head.
	add_theme_support('automatic-feed-links');

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support('title-tag');

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support('post-thumbnails');

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'menu-1' => esc_html__('Primary', 'cobold-digital'),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'cobold_digital_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support('customize-selective-refresh-widgets');

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action('after_setup_theme', 'cobold_digital_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function cobold_digital_content_width()
{
	$GLOBALS['content_width'] = apply_filters('cobold_digital_content_width', 640);
}
add_action('after_setup_theme', 'cobold_digital_content_width', 0);

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function cobold_digital_widgets_init()
{
	register_sidebar(
		array(
			'name'          => esc_html__('Sidebar', 'cobold-digital'),
			'id'            => 'sidebar-1',
			'description'   => esc_html__('Add widgets here.', 'cobold-digital'),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action('widgets_init', 'cobold_digital_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function cobold_digital_scripts()
{
	wp_enqueue_style('cobold-digital-style', get_stylesheet_uri(), array(), _S_VERSION);
	wp_style_add_data('cobold-digital-style', 'rtl', 'replace');
	wp_enqueue_script('cobold-digital-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true);
	if (is_singular() && comments_open() && get_option('thread_comments')) {
		wp_enqueue_script('comment-reply');
	}
	wp_register_style('style', get_template_directory_uri() . '/assets/css/style.css', false, '1.1', 'all');
	wp_enqueue_style('style');
	wp_register_style('font-awesome', get_template_directory_uri() . '/assets/css/font-awesome.css,', false, '1.1', 'all');
	wp_enqueue_style('font-awesome');
	wp_register_style('flex-slider', get_template_directory_uri() . '/assets/css/flex-slider.css', false, '1.1', 'all');
	wp_enqueue_style('flex-slider');
	wp_register_style('bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css', false, '1.1', 'all');
	wp_enqueue_style('bootstrap');

	wp_register_script('jquery-min', get_template_directory_uri() . '/assets/js/jquery-2.1.0.min.js', array('jquery'), '1.1', true);
	wp_enqueue_script('jquery-min');
	wp_register_script('popper', get_template_directory_uri() . '/assets/js/popper.js', array('jquery'), 1.1, true);
	wp_enqueue_script('popper');
	wp_register_script('bootstrap-min', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array('jquery'), 1.1, true);
	wp_enqueue_script('bootstrap-min');
	wp_register_script('scrollreveal', get_template_directory_uri() . '/assets/js/scrollreveal.min.js', array('jquery'), 1.1, true);
	wp_enqueue_script('scrollreveal');
	wp_register_script('waypoints', get_template_directory_uri() . '/assets/js/waypoints.min.js', array('jquery'), 1.1, true);
	wp_enqueue_script('waypoints');
	wp_register_script('jquery-counterup', get_template_directory_uri() . '/assets/js/jquery.counterup.min.js', array('jquery'), 1.1, true);
	wp_enqueue_script('jquery-counterup');
	wp_register_script('imgfix', get_template_directory_uri() . '/assets/js/imgfix.min.js', array('jquery'), 1.1, true);
	wp_enqueue_script('imgfix');
	wp_register_script('custom', get_template_directory_uri() . '/assets/js/custom.js', array('jquery'), '1.1', true);
	wp_enqueue_script('custom');
}
add_action('wp_enqueue_scripts', 'cobold_digital_scripts');

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';
/**
 * CMB2 additions for metaboxes
 */
require get_template_directory() . '/vendor/CMB2/init.php';


/**
 * Load Jetpack compatibility file.
 */
if (defined('JETPACK__VERSION')) {
	require get_template_directory() . '/inc/jetpack.php';
}

add_action('admin_init', 'remove_textarea');

function remove_textarea()
{
	remove_post_type_support('page', 'editor');
}


add_action('cmb2_admin_init', 'cmb2_sample_metaboxes');
/**
 * Define the metabox and field configurations.
 */
function cmb2_sample_metaboxes()
{

	//----------------------------------------  Welcome Section Starts------------------------------------------------------//

	$cmb = new_cmb2_box(array(
		'id'           => 'welcome-section',
		'title'        => 'Welcome Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$cmb->add_field(array(
		'name' => 'Welcome Section Heading',
		'default' => 'We provide the best <strong>strategy</strong><br>to grow up your <strong>business</strong>',
		'id' => 'welcome_section_header_text',
		'type' => 'textarea_small'
	));
	$cmb->add_field(array(
		'name' => 'Welcome Section Below Heading Text',
		'default' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque velit metus, imperdiet finibus efficitur posuere, placerat sed erat. Integer viverra et sapien in ornare.',
		'id' => 'welcome_section_below_text',
		'type' => 'textarea_small'
	));

	//----------------------------------------  Welcome Section Ends------------------------------------------------------//
	//----------------------------------  Home features Section Starts--------------------------------------------------------//

	$cmb = new_cmb2_box(array(
		'id'           => 'home-feature-section',
		'title'        => 'Home Feature Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$group_field_id = $cmb->add_field(array(
		'id'          => 'home_feature_section_repeat_group',
		'type'        => 'group',
		// 'repeatable'  => false, // use false if you want non-repeatable group
		'options'     => array(
			'group_title'       => __('Features Items {#}', 'cmb2'), // since version 1.1.4, {#} gets replaced by row number
			'add_button'        => __('Add Another Featured Item', 'cmb2'),
			'remove_button'     => __('Remove Featured Item', 'cmb2'),
			'sortable'          => true,
			'closed'         => true, // true to have the groups closed by default
			// 'remove_confirm' => esc_html__( 'Are you sure you want to remove?', 'cmb2' ), // Performs confirmation before removing group.
		),
	));

	// Id's for group's fields only need to be unique for the group. Prefix is not needed.
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Features Title',
		'id'   => 'features-title',
		'type' => 'text',
		// 'repeatable' => true, // Repeatable fields are supported w/in repeatable groups (for most types)
	));

	$cmb->add_group_field($group_field_id, array(
		'name' => 'Feature Description',
		'default' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque velit metus.',
		'id'   => 'features-title-description',
		'type' => 'textarea_small',
	));
	$cmb->add_group_field($group_field_id, array(
		'name'    => 'Add icon',
		'desc'    => 'Upload an image or enter an URL.',
		'id'      => 'features_image',
		'type'    => 'file',
		// Optional:
		'options' => array(
			'url' => true,
		),
		'text'    => array(
			'add_upload_file_text' => 'Add Icon Image'
		),
		// query_args are passed to wp.media's library query.
		'query_args' => array(
			'type' => array(
				'image/gif',
				'image/jpeg',
				'image/png',
			),
		),
		'preview_size' => 'small',
	));


	//----------------------------------------  Home Features Section Ends------------------------------------------------------//
	//----------------------------------  Big Features Section-1 Starts--------------------------------------------------------//

	$cmb = new_cmb2_box(array(
		'id'           => 'big-feature-section',
		'title'        => 'Big Feature Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$cmb->add_field(array(
		'name'    => 'Heading',
		'default' => 'Let’s discuss about you project',
		'id'      => 'big-feature_text',
		'type'    => 'text',
	));
	$cmb->add_field(array(
		'name' => 'Description',
		'default' => 'Nullam sit amet purus libero. Etiam ullamcorper nisl ut augue blandit, at finibus leo efficitur. Nam gravida purus non sapien auctor, ut aliquam magna ullamcorper.',
		'id' => 'big-feature-description_text',
		'type' => 'textarea_small'
	));
	$cmb->add_field(array(
		'name'    => 'Upload Image',
		'desc'    => 'Upload an image or enter an URL.',
		'id'      => 'big-feature_image',
		'type'    => 'file',
		// Optional:
		'options' => array(
			'url' => true, // Hide the text input for the url
		),
		'text'    => array(
			'add_upload_file_text' => 'Add Image' // Change upload button text. Default: "Add or Upload File"
		),
		'query_args' => array(
			'type' => array(
				'image/gif',
				'image/jpeg',
				'image/png',
			),
		),
		'preview_size' => 'large', // Image size to use when previewing in the admin.
	));

	//----------------------------------------  Big Features Section-1 Ends------------------------------------------------------//
	//----------------------------------  Big Features Section-2 Starts--------------------------------------------------------//


	$cmb = new_cmb2_box(array(
		'id'           => 'big-feature-section-2',
		'title'        => 'Big Feature Section 2',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$cmb->add_field(array(
		'name'    => 'Heading-2',
		'default' => 'We can help you to grow your business',
		'id'      => 'big-feature-section-2_text',
		'type'    => 'text',
	));
	$cmb->add_field(array(
		'name' => 'Description',
		'default' => 'Aenean pretium, ipsum et porttitor auctor, metus ipsum iaculis nisi, a bibendum lectus libero vitae urna. Sed id leo eu dolor luctus congue sed eget ipsum. Nunc nec luctus libero. Etiam quis dolor elit',
		'id' => 'big-feature-section-2_textareasmall',
		'type' => 'textarea_small'
	));
	$cmb->add_field(array(
		'name'    => 'Image',
		'desc'    => 'Upload an image or enter an URL.',
		'id'      => 'big-feature-section-2_image',
		'type'    => 'file',
		// Optional:
		'options' => array(
			'url' => true, // Hide the text input for the url
		),
		'text'    => array(
			'add_upload_file_text' => 'Add Image' // Change upload button text. Default: "Add or Upload File"
		),
		'query_args' => array(
			'type' => array(
				'image/gif',
				'image/jpeg',
				'image/png',
			),
		),
		'preview_size' => 'large', // Image size to use when previewing in the admin.
	));

	//----------------------------------------  Big Features Section-2 Ends------------------------------------------------------//
	//---------------------------------- Work Progress Section Starts--------------------------------------------------------//


	$cmb = new_cmb2_box(array(
		'id'           => 'work-process-section',
		'title'        => 'Work Process Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$cmb->add_field(array(
		'name' => 'Work Progress Heading',
		'default' => 'Work Process',
		'id'      => 'work_progress_title',
		'type'    => 'text',
	));

	$cmb->add_field(array(
		'name' => 'Work Progress description',
		'default' => 'Aenean nec tempor metus. Maecenas ligula dolor, commodo in imperdiet interdum, vehicula ut ex. Donec ante diam.',
		'id' => 'work_progress_textarea_small',
		'type' => 'textarea_small'
	));

	$group_field_id = $cmb->add_field(array(
		'id'          => 'work_progress_repeat_group',
		'type'        => 'group',
		// 'repeatable'  => false, // use false if you want non-repeatable group
		'options'     => array(
			'group_title'       => __('Mini Box {#}', 'cmb2'), // since version 1.1.4, {#} gets replaced by row number
			'add_button'        => __('Add Another Mini Box', 'cmb2'),
			'remove_button'     => __('Remove Mini Box', 'cmb2'),
			'sortable'          => true,
			'closed'         => true, // true to have the groups closed by default
		),
	));

	// Id's for group's fields only need to be unique for the group. Prefix is not needed.
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Mini Box Title',
		'id'   => 'work_progress_title',
		'type' => 'text',
	));

	$cmb->add_group_field($group_field_id, array(
		'name' => 'Mini Box Description',
		'default' => 'Godard pabst prism fam cliche.',
		'id'   => 'work_progress_description',
		'type' => 'textarea_small',
	));
	$cmb->add_group_field($group_field_id, array(
		'name'    => 'Add Icon Image',
		'desc'    => 'Upload an image or enter an URL.',
		'id'      => 'work_progresst_image',
		'type'    => 'file',
		// Optional:
		'options' => array(
			'url' => true,
		),
		'text'    => array(
			'add_upload_file_text' => 'Add Icon Image' // Change upload button text. Default: "Add or Upload File"
		),
		// query_args are passed to wp.media's library query.
		'query_args' => array(
			// Or only allow gif, jpg, or png images
			'type' => array(
				'image/gif',
				'image/jpeg',
				'image/png',
			),
		),
		'preview_size' => 'small',
	));

	//---------------------------------------- Work Progress Section  Ends------------------------------------------------------//
	//----------------------------------Counter Section Starts--------------------------------------------------------//


	$cmb = new_cmb2_box(array(
		'id'           => 'counter-section',
		'title'        => 'Counter Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$group_field_id = $cmb->add_field(array(
		'id'          => 'wiki_test_repeat_group',
		'type'        => 'group',
		// 'repeatable'  => false, // use false if you want non-repeatable group
		'options'     => array(
			'group_title'       => __('Counter Stats {#}', 'cmb2'), // since version 1.1.4, {#} gets replaced by row number
			'add_button'        => __('Add Another Entry', 'cmb2'),
			'remove_button'     => __('Remove Entry', 'cmb2'),
			'sortable'          => true,
			'closed'         => true, // true to have the groups closed by default
		),
	));
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Entry Title',
		'id'   => 'title',
		'type' => 'text',
	));

	$cmb->add_group_field($group_field_id, array(
		'name' => 'Text',
		'id'   => 'second-title',
		'type' => 'text',
	));

	//---------------------------------------- Counter Section Ends------------------------------------------------------//
	//----------------------------------Testimonials Section Starts--------------------------------------------------------//


	$cmb = new_cmb2_box(array(
		'id'           => 'testimonials-section',
		'title'        => 'Testimonials Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));

	$cmb->add_field(array(
		'name'    => 'Testimonial Heading',
		'default' => 'What do they say?',
		'id'      => 'testimonial_text',
		'type'    => 'text',
	));

	$cmb->add_field(array(
		'name' => 'Testimonial description',
		'default' => 'Donec tempus, sem non rutrum imperdiet, lectus orci fringilla nulla, at accumsan elit eros a turpis. Ut sagittis lectus libero.',
		'id' => 'testimonial_textarea_small',
		'type' => 'textarea_small'
	));
	$cmb->add_field(array(
		'name' => 'Layout Shortcode',
		'desc' => '',
		'default' => '',
		'id' => 'testimonial_layout_textareasmall',
		'type' => 'textarea_small'
	));

	//---------------------------------------- Testimonials Section Ends------------------------------------------------------//
	//----------------------------------Pricing Plans  Section Starts--------------------------------------------------------//


	$cmb = new_cmb2_box(array(
		'id'           => 'pricing-plans-section',
		'title'        => 'Pricing Plans Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$cmb->add_field(array(
		'name'    => 'Pricing Plan Heading',
		'default' => 'Pricing Plans',
		'id'      => 'pricing-plan_text',
		'type'    => 'text',
	));

	$cmb->add_field(array(
		'name' => 'Pricing Plan description',
		'default' => 'Donec vulputate urna sed rutrum venenatis. Cras consequat magna quis arcu elementum, quis congue risus volutpat.',
		'id' => 'pricing-plan_textarea_small',
		'type' => 'textarea_small'
	));
	$group_field_id = $cmb->add_field(array(
		'id'          => 'table_repeat_group',
		'type'        => 'group',
		// 'repeatable'  => false, // use false if you want non-repeatable group
		'options'     => array(
			'group_title'       => __('Table {#}', 'cmb2'), // since version 1.1.4, {#} gets replaced by row number
			'add_button'        => __('Add Another Table', 'cmb2'),
			'remove_button'     => __('Remove Table', 'cmb2'),
			'sortable'          => true,
			'closed'         => true, // true to have the groups closed by default
			// 'remove_confirm' => esc_html__( 'Are you sure you want to remove?', 'cmb2' ), // Performs confirmation before removing group.
		),
	));

	// Id's for group's fields only need to be unique for the group. Prefix is not needed.
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Pricing Title',
		'id'   => 'pricing-title',
		'type' => 'text',
		// 'repeatable' => true, // Repeatable fields are supported w/in repeatable groups (for most types)
	));
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Currency',
		'id'   => 'currency',
		'type' => 'text',
		// 'repeatable' => true, // Repeatable fields are supported w/in repeatable groups (for most types)
	));
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Price',
		'id'   => 'price',
		'type' => 'text',
		// 'repeatable' => true, // Repeatable fields are supported w/in repeatable groups (for most types)
	));
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Period',
		'id'   => 'period',
		'type' => 'text',
		// 'repeatable' => true, // Repeatable fields are supported w/in repeatable groups (for most types)
	));

	$cmb->add_group_field($group_field_id, array(
		'name'    => 'List of Details',
		'id'      => 'pricing_plan_list_wysiwyg',
		'type'    => 'wysiwyg',
		'options' => array(),
	));

	$cmb->add_group_field($group_field_id, array(
		'name' => __('Bitton Link', 'cmb2'),
		'id'   => 'pricing_plan_url',
		'type' => 'text_url',
		// 'protocols' => array( 'http', 'https', 'ftp', 'ftps', 'mailto', 'news', 'irc', 'gopher', 'nntp', 'feed', 'telnet' ), // Array of allowed protocols
	));
	//------------------------------------------------ Pricing Plan section Ends Here----------------------------------//
	//------------------------------------Counter Section Starts------------------------------------------------------//
	$cmb = new_cmb2_box(array(
		'id'           => 'counter-section',
		'title'        => 'Counter Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$group_field_id = $cmb->add_field(array(
		'id'          => 'wiki_test_repeat_group',
		'type'        => 'group',
		// 'repeatable'  => false, // use false if you want non-repeatable group
		'options'     => array(
			'group_title'       => __('Counter Stats {#}', 'cmb2'), // since version 1.1.4, {#} gets replaced by row number
			'add_button'        => __('Add Another Entry', 'cmb2'),
			'remove_button'     => __('Remove Entry', 'cmb2'),
			'sortable'          => true,
			'closed'         => true, // true to have the groups closed by default
			// 'remove_confirm' => esc_html__( 'Are you sure you want to remove?', 'cmb2' ), // Performs confirmation before removing group.
		),
	));
	$cmb->add_group_field($group_field_id, array(
		'name' => 'Entry Title',
		'id'   => 'title',
		'type' => 'text',
		// 'repeatable' => true, // Repeatable fields are supported w/in repeatable groups (for most types)
	));

	$cmb->add_group_field($group_field_id, array(
		'name' => 'Text',
		'id'   => 'second-title',
		'type' => 'text',
		// 'repeatable' => true, // Repeatable fields are supported w/in repeatable groups (for most types)
	));


	//----------------------------------------Counter Section Ends------------------------------------------------------//
	//----------------------------------Blogs Section Starts--------------------------------------------------------//


	$cmb = new_cmb2_box(array(
		'id'           => 'blog-section',
		'title'        => 'Blogs Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$cmb->add_field(array(
		'name'    => 'Blog Heading',
		'default' => 'Blog Entries',
		'id'      => 'blogs-section_text',
		'type'    => 'text',
	));

	$cmb->add_field(array(
		'name' => 'Blogs Description',
		'default' => 'Integer molestie aliquam gravida. Nullam nec arcu finibus, imperdiet nulla vitae, placerat nibh. Cras maximus venenatis molestie.',
		'id' => 'blogs_section_textarea_small',
		'type' => 'textarea_small'
	));
	$cmb->add_field(array(
		'name'    => 'Blogs Layout Shortcode',
		'desc'    => 'shortcode of layout is displayed',
		'id'      => 'blogs_layout_wysiwyg',
		'type'    => 'wysiwyg',
		'options' => array(),
	));

	//----------------------------------------Blogs Section Ends------------------------------------------------------//
	//----------------------------------Contact Us Section Starts--------------------------------------------------------//

	$cmb = new_cmb2_box(array(
		'id'           => 'contact-us-section',
		'title'        => 'Contact Us Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'normal', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));

	$cmb->add_field(array(
		'name'    => 'Heading for Contact Section',
		'default' => 'Talk To Us',
		'id'      => 'contactus_main_heading',
		'type'    => 'text',
	));
	$cmb->add_field(array(
		'name' => 'Contact Us Description',
		'default' => 'Maecenas pellentesque ante faucibus lectus vulputate sollicitudin. Cras feugiat hendrerit semper.',
		'id' => 'contactus_heading_description',
		'type' => 'textarea_small'
	));
	$cmb->add_field(array(
		'name'    => 'Left Hand Side heading for Contact Section',
		'default' => 'Keep in touch',
		'id'      => 'contactus_heading',
		'type'    => 'text',
	));
	$cmb->add_field(array(
		'name'    => 'Contact Section Description',
		'id'      => 'contact_section_description',
		'default' => '<p>110-220 Quisque diam odio, maximus ac consectetur eu, 10260 auctor non lorem</p>
		<p>You are NOT allowed to re-distribute Softy Pinko template on any template collection websites. Thank you.</p>
		',
		'type'    => 'wysiwyg',
		'options' => array(
			'wpautop' => false,
			'media_buttons' => false,
		),
	));
	$cmb->add_field(array(
		'name'    => 'Contact Form 7 Section',
		'desc' => 'add shortcode for contact form 7',
		'id'      => 'contact-form-7',
		'type'    => 'wysiwyg',
		'options' => array(
			'wpautop' => true,
			'media_buttons' => false,
		),
	));

	//-------------------------------------------Contact-us-Section Ends--------------------------------------//	
	//-----------------------------Footer Section Starts--------------------------------------------------------//
	$cmb = new_cmb2_box(array(
		'id'           => 'footer-section',
		'title'        => 'Footer Section',
		'object_types' => array('page'), // post type
		'show_on'      => array('key' => 'page-template', 'value' => 'front-page-template.php'),
		'context'      => 'advanced', //  'normal', 'advanced', or 'side'
		'priority'     => 'high',  //  'high', 'core', 'default' or 'low'
		'show_names'   => true, // Show field names on the left
	));
	$cmb->add_field(array(
		'name' => __('Facebook URL', 'cmb2'),
		'id'   => 'text_facebookurl',
		'type' => 'text_url',
		'protocols' => array('http', 'https'), // Array of allowed protocols
	));
	$cmb->add_field(array(
		'name' => __('Twitter URL', 'cmb2'),
		'id'   => 'text_twitterurl',
		'type' => 'text_url',
		'protocols' => array('http', 'https'), // Array of allowed protocols
	));
	$cmb->add_field(array(
		'name' => __('Linkedin URL', 'cmb2'),
		'id'   => 'text_linkedinurl',
		'type' => 'text_url',
		'protocols' => array('http', 'https'), // Array of allowed protocols
	));
	$cmb->add_field(array(
		'name' => __('Rss Url', 'cmb2'),
		'id'   => 'text_rssurl',
		'type' => 'text_url',
		'protocols' => array('http', 'https', 'feed'), // Array of allowed protocols
	));
	$cmb->add_field(array(
		'name' => __('Dribbble Url', 'cmb2'),
		'id'   => 'text_dribbleurl',
		'type' => 'text_url',
		'protocols' => array('http', 'https'), // Array of allowed protocols
	));

	$cmb->add_field(array(
		'name'    => 'Copyright Text',
		'id'      => 'copyright_text_wysiwyg',
		'type'    => 'wysiwyg',
		'options' => array(
			'wpautop' => true,
			'media_buttons' => false,
		),
	));
}

// Register Custom Post Type
function custom_post_type()
{

	$labels = array(
		'name'                  => _x('Testimonials', 'Post Type General Name', 'cobold_digital'),
		'singular_name'         => _x('Testimonial', 'Post Type Singular Name', 'cobold_digital'),
		'menu_name'             => __('Testimonials', 'cobold_digital'),
		'name_admin_bar'        => __('Testimonials', 'cobold_digital'),
		'archives'              => __('Testimonial Archives', 'cobold_digital'),
		'attributes'            => __('Testimonial Attributes', 'cobold_digital'),
		'parent_item_colon'     => __('Parent Item:', 'cobold_digital'),
		'all_items'             => __('All Testimonials', 'cobold_digital'),
		'add_new_item'          => __('Add New Testimonial', 'cobold_digital'),
		'add_new'               => __('Add New', 'cobold_digital'),
		'new_item'              => __('New Testimonial', 'cobold_digital'),
		'edit_item'             => __('Edit Testimonial', 'cobold_digital'),
		'update_item'           => __('Update Testimonial', 'cobold_digital'),
		'view_item'             => __('View Testimonial', 'cobold_digital'),
		'view_items'            => __('View Testimonials', 'cobold_digital'),
		'search_items'          => __('Search Testimonial', 'cobold_digital'),
		'not_found'             => __('Not found', 'cobold_digital'),
		'not_found_in_trash'    => __('Not found in Trash', 'cobold_digital'),
		'featured_image'        => __('Featured Image', 'cobold_digital'),
		'set_featured_image'    => __('Set featured image', 'cobold_digital'),
		'remove_featured_image' => __('Remove featured image', 'cobold_digital'),
		'use_featured_image'    => __('Use as featured image', 'cobold_digital'),
		'insert_into_item'      => __('Insert into testimonial', 'cobold_digital'),
		'uploaded_to_this_item' => __('Uploaded to this testimonial', 'cobold_digital'),
		'items_list'            => __('Testimonials list', 'cobold_digital'),
		'items_list_navigation' => __('Testimonials list navigation', 'cobold_digital'),
		'filter_items_list'     => __('Filter testimonials list', 'cobold_digital'),
	);
	$args = array(
		'label'                 => __('Testimonials', 'cobold_digital'),
		'description'           => __('Shows the testimonials received by clients', 'cobold_digital'),
		'labels'                => $labels,
		'supports'              => array('editor'),
		'hierarchical'          => false,
		'public'                => true,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 5,
		'menu_icon'             => 'dashicons-megaphone',
		'show_in_admin_bar'     => true,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => true,
		'exclude_from_search'   => false,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type('Testimonials', $args);
	flush_rewrite_rules();
}
add_action('init', 'custom_post_type', 0);

add_action('cmb2_admin_init', 'cmb2_add_metaboxes_in_testimonial');
function cmb2_add_metaboxes_in_testimonial()
{

	/**
	 * Initiate the metabox
	 */
	$cmb = new_cmb2_box(array(
		'id'            => 'client-details',
		'title'         => __('Client Details', 'cmb2'),
		'object_types'  => array('testimonials',), // Post type
		'context'       => 'normal',
		'priority'      => 'high',
		'show_names'    => true, // Show field names on the left
		// 'cmb_styles' => false, // false to disable the CMB stylesheet
		// 'closed'     => true, // Keep the metabox closed by default
	));
	$cmb->add_field(array(
		'name'    => 'Client Name',
		'id'      => 'client_details_name',
		'type'    => 'text',
	));

	$cmb->add_field(array(
		'name'    => 'Client Designation',
		'id'      => 'client_details_designation',
		'type'    => 'text',
	));
	$cmb->add_field(array(
		'name'    => 'Client image',
		'id'      => 'client_details_image',
		'type'    => 'file',
		// Optional:
		'options' => array(
			'url' => false, // Hide the text input for the url
		),
		'text'    => array(
			'add_upload_file_text' => 'Add Image' // Change upload button text. Default: "Add or Upload File"
		),
		// query_args are passed to wp.media's library query.
		'query_args' => array(
			// Or only allow gif, jpg, or png images
			'type' => array(
				'image/gif',
				'image/jpeg',
				'image/png',
			),
		),
		'preview_size' => 'medium', // Image size to use when previewing in the admin.
	));
}

/**
 * Setup query to show the ‘process’ post type with ‘shortcode'.
 */
function blogs_show($atts)
{
	//return layout of our cpt process";
	ob_start();
	$args = array(
		'post_type' => 'post',
		'post_status' => 'publish',
		'posts_per_page' => -1,
		'orderby' => 'ID',
		'order' => 'ASC',
	);
	$loop = new WP_Query($args);
	echo '<div class="row">';
	while ($loop->have_posts()) : $loop->the_post();
		$content = get_the_content();
		$title = get_the_title();
		$image = get_the_post_thumbnail();
		echo '<div class="col-lg-4 col-md-6 col-sm-12">';
		echo '<div class="blog-post-thumb">';
		echo            '<div class="img">';
		echo $image;
		echo '</div>';
		echo '<div class="blog-content">';
		echo "<h3><a href='#'>" . $title . "</a></h3>";
		echo '<div class="text">';
		echo  $content;
		echo '</div>';
		echo '</div>';
		echo '<a href="#" class="main-button">Read More</a>';
		echo '</div>';
		echo '</div>';
	endwhile;
	echo '</div>';
	wp_reset_postdata();
	$myvariable = ob_get_clean();
	return $myvariable;
}
add_shortcode('blogs', 'blogs_show');

/**
 * Setup query to show the ‘process’ post type with ‘shortcode'.
 */
function testimonials_show($atts)
{
	//return layout of our cpt process";
	ob_start();
	$args = array(
		'post_type' => 'testimonials',
		'post_status' => 'publish',
		'posts_per_page' => -1,
		'orderby' => 'ID',
		'order' => 'ASC',
	);
	$loop = new WP_Query($args);
	echo '<div class="row">';
	while ($loop->have_posts()) : $loop->the_post();
		$content = get_the_content();
		$userimage = wp_get_attachment_image(get_post_meta(get_the_ID(), 'client_details_image_id', 1), 'small');
		$username = get_post_meta(get_the_ID(), 'client_details_name', true);
		$userdesignation = get_post_meta(get_the_ID(), 'client_details_designation', true);
		echo '<div class="col-lg-4 col-md-6 col-sm-12">';
		echo '<div class="team-item">';
		echo '<div class="team-content">';
		echo '<i><img src="'.home_url().'/wp-content/uploads/2022/07/testimonial-icon.png" alt=""></i>';
		echo '<p>' . $content . '</p>';
		echo '<div class="user-image">';
		echo $userimage;
		echo '</div>';
		echo  '<div class="team-info">';
		echo   '<h3 class="user-name">' . $username . '</h3>';
		echo   '<span>' . $userdesignation . '</span>';
		echo   '</div>';
		echo   '</div>';
		echo   '</div>';
		echo    '</div>';

	endwhile;
	echo '</div>';
	wp_reset_postdata();
	$myvariable = ob_get_clean();
	return $myvariable;
}
add_shortcode('testimonials', 'testimonials_show');
add_image_size( 'small', 60, 60 );