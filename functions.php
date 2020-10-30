<?php 

    function eget_tema_files(){
        wp_enqueue_style("google_fonts_roboto", "//fonts.googleapis.com/css2?family=Roboto&display=swap");
        wp_enqueue_style("eget_tema_main_styles", get_stylesheet_uri());
    }

    add_action("wp_enqueue_scripts", "eget_tema_files");

    function scripts(){
        //Hittat denna scriptinstallation för sass här: https://www.youtube.com/watch?v=7Nu3n-aQ9Hs
        wp_register_style( "style", get_template_directory_uri() . '/dist/app.css', [], 1, "all" );
        wp_enqueue_style( "style" );

        wp_enqueue_script("jquery");

        wp_register_script("app", get_template_directory_uri() . '/dist/app.js', ["jquery"], true);
        wp_enqueue_script("app");
    }
    add_action("wp_enqueue_scripts", "scripts");

?>