<?php

function ownThemePostTypes(){
        register_post_type( 'event', array(
            'supports' => array('title', 'editor', 'excerpt'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'events'),
            'public' => true,
            'labels' => array(
                'name' => 'Events',
                'add_new_item' => 'Add New Event',
                'edit_item' => 'Edit Event',
                'all_items' => 'All Events',
                'singular_name' => 'Event'
            ),
            'menu_icon' => 'dashicons-editor-quote'
        ) );
        
    }
//gör en custom post type
add_action('init', 'ownThemePostTypes');