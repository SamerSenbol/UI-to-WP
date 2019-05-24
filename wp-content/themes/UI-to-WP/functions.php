<?php
	
function script_enqueue() {
	wp_enqueue_style('bootstrap', get_stylesheet_directory_uri().'/css/bootstrap.css');
	wp_enqueue_style('fontawesome','//use.fontawesome.com/releases/v5.1.0/css/all.css');
	wp_enqueue_style('customstyle', get_template_directory_uri() . '/css/UI-to-WP.css', array(), '1.0.0', 'all');
	wp_enqueue_script('customjs', get_template_directory_uri() . '/js/UI-to-WP.js', array(), '1.0.0', true);
	
}
add_action( 'wp_enqueue_scripts', 'script_enqueue');

// Adding theme support.
function gt_init() {
	add_theme_support('post-thumbnails');
	add_theme_support('title-tag');
	add_theme_support('html5',
	array('comment-list', 'comment-form', 'search-form')
 );
 }
 
 add_action('after_setup_theme', 'gt_init');

 function theme_setup() {
	
	add_theme_support('menus');
	
	register_nav_menu('primary', 'Primary Header Navigation');
	register_nav_menu('secondary', 'Sidebar');
	
}
add_action('init', 'theme_setup');

/*
	==========================================
	 Sidebar function
	==========================================
*/
function widget_setup() {
	
	register_sidebar(
		array(	
			'name'	=>'Sidebar',
			'id'	=> 'sidebar-1',
			'class'	=> 'custom',
			'description' => 'Standard Sidebar',
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget'  => '</aside>',
			'before_title'  => '<h1 class="widget-title">',
			'after_title'   => '</h1>',
		)
	);
	
}
add_action('widgets_init','widget_setup');