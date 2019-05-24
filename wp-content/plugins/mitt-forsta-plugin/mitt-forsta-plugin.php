<?php
/*
Plugin Name: Min första plugin
*/


function registrerablock(){

$installningar = [
    'name' => 'med-testblock',
    'title' => 'Testblock för Medieinstitutet',
    //'render_template' => 'template-parts/block/content-med-testblock.php',
    'render_callback' => 'medtestrender',
    'enqueue_style' => plugins_url('/block/med-test-stil.css', __FILE__),
    'enqueue_script' => get_template_directory_uri().'/template-parts/block/med-test-script.js',

];
acf_register_block_type($installningar);
}

add_action('acf/init', 'registrerablock');


function medtestrender(){ ?>
    <div class="med-testblock" style="background-color:<?php the_field('farg'); ?>;">
    <p><?php the_field('rubrik'); ?></p>
    <img src="" alt="">
</div>
<?php
}


function skrivuthej(){
    echo '<h1>HEJ !</h1>';
}

add_action('wp_footer','skrivuthej');


add_action('acf/init', 'addmyacffields');

function addmyacffields(){

    acf_add_local_field_group(array(
        'key' => 'group_5cd91dfbc33a6',
        'title' => 'Blockgrupp',
        'fields' => array(
            array(
                'key' => 'field_5cd91e1e44fd9',
                'label' => 'Rubrik',
                'name' => 'rubrik',
                'type' => 'text',
                'instructions' => '',
                'required' => 0,
                'conditional_logic' => 0,
                'wrapper' => array(
                    'width' => '',
                    'class' => '',
                    'id' => '',
                ),
                'default_value' => '',
                'placeholder' => '',
                'prepend' => '',
                'append' => '',
                'maxlength' => '',
            ),
            array(
                'key' => 'field_5cd91e3244fda',
                'label' => 'Bild',
                'name' => 'bild',
                'type' => 'image',
                'instructions' => '',
                'required' => 0,
                'conditional_logic' => 0,
                'wrapper' => array(
                    'width' => '',
                    'class' => '',
                    'id' => '',
                ),
                'return_format' => 'array',
                'preview_size' => 'thumbnail',
                'library' => 'all',
                'min_width' => '',
                'min_height' => '',
                'min_size' => '',
                'max_width' => '',
                'max_height' => '',
                'max_size' => '',
                'mime_types' => '',
            ),
            array(
                'key' => 'field_5cd91e4144fdb',
                'label' => 'Färg',
                'name' => 'farg',
                'type' => 'color_picker',
                'instructions' => '',
                'required' => 0,
                'conditional_logic' => 0,
                'wrapper' => array(
                    'width' => '',
                    'class' => '',
                    'id' => '',
                ),
                'default_value' => '',
            ),
        ),
        'location' => array(
            array(
                array(
                    'param' => 'block',
                    'operator' => '==',
                    'value' => 'acf/med-testblock',
                ),
            ),
        ),
        'menu_order' => 0,
        'position' => 'normal',
        'style' => 'default',
        'label_placement' => 'top',
        'instruction_placement' => 'label',
        'hide_on_screen' => '',
        'active' => true,
        'description' => '',
    ));
    
}


