<?php

function ownThemePostTypes(){
        register_post_type( 'event', array(
            'supports' => array('title', 'editor', 'excerpt', 'thumbnail'),
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

        register_post_type( 'program', array(
            'supports' => array('title', 'editor'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'programs'),
            'public' => true,
            'labels' => array(
                'name' => 'Programs',
                'add_new_item' => 'Add New Program',
                'edit_item' => 'Edit Program',
                'all_items' => 'All Programs',
                'singular_name' => 'Program'
            ),
            'menu_icon' => 'dashicons-awards'
        ) );

        register_post_type( 'professor', array(
            'supports' => array('title', 'editor', 'thumbnail'),
            'public' => true,
            'labels' => array(
                'name' => 'Professors',
                'add_new_item' => 'Add New Professor',
                'edit_item' => 'Edit Professor',
                'all_items' => 'All Professors',
                'singular_name' => 'Professor'
            ),
            'menu_icon' => 'dashicons-coffee'
        ) );
        
        
    }
//gör en custom post type
add_action('init', 'ownThemePostTypes');