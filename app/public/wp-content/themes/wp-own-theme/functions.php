<?php 

    function eget_tema_files(){
        wp_enqueue_style("google_fonts_roboto", "//fonts.googleapis.com/css2?family=Roboto&display=swap");
        //den här null och microtime gör så att stylesheeten inte cachas. Så slipper du köra disable cache i browsern.
        wp_enqueue_style("eget_tema_main_styles", get_stylesheet_uri(), NULL, microtime());
        // $url = get_site_url();
        // echo $url;
        // global $wp;
        // $url = home_url( $wp->request );
        // echo $url;
//         global $wp;
// echo add_query_arg( $wp->query_vars, home_url() );

    global $post;
    $post_name = $post->post_name;
    $post_title = $post->post_title;
    // echo var_dump($post);
    // $url = get_site_url();
    // echo $url;
    // echo var_dump($post);
    // echo strtolower($post_title);

    $obj_id = get_queried_object_id();
$current_url = get_permalink( $obj_id );
    // echo $current_url;
    $fullSlug = "/" . $post_name . "/" . strtolower($post_title);
    // echo $fullSlug;
    $slug = get_post_field( 'post_name', get_post() );
    $url = home_url( add_query_arg( null, null ));
    // echo $slug;
    // echo get_the_permalink();

        if($url === 'http://egetthemeforum.local/community/' OR $url === 'http://egetthemeforum.local/community/forum/' ){
        // if($fullSlug === '/community/forum' OR $slug === 'community'){
            
            // echo "SANT";
            wp_register_style("extra_styles", get_template_directory_uri() . '/dist/extraStyles.css', [], 1, "all");
            wp_enqueue_style("extra_styles");
        } else{
            // wp_register_style("extra_styles", get_template_directory_uri() . '/dist/extraStyles.css', [], 1, "all");
            // wp_enqueue_style("extra_styles");
            // echo "FALSKT";
        };
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

    function ownThemeFeatures() {
        // register_nav_menu( 'headerMenuLocation', 'Header Menu Location' );
        register_nav_menu( 'footerMenuLocation1', 'Footer Menu Location 1' );
        register_nav_menu( 'footerMenuLocation2', 'Footer Menu Location 2' );
        register_nav_menu( 'footerMenuLocation3', 'Footer Menu Location 3' );
        add_theme_support( 'title_tag');
    }

    //Denna uppdaterar titel-taggen för varje sida du är på. Kan vara bra, v nr 13. ÄVEN HÄR SLÄNGER VI IN MENYN
    add_action('after_setup_theme', 'ownThemeFeatures');

    // DETTA ÄR FLYTTAT TILL MU-PLUGINS, SÅ ATT CUSTOM POST TYPES HÄNGER MED I ALLA THEMES
    // function ownThemePostTypes(){
    //     register_post_type( 'event', array(
    //         'public' => true,
    //         'labels' => array(
    //             'name' => 'Events'
    //         ),
    //         'menu_icon' => 'dashicons-editor-quote'
    //     ) );
        
    // }
    // //gör en custom post type
    // add_action('init', 'ownThemePostTypes');



    //Redirecta subscribers som loggar in till hemsidan

    function redirectToFrontend(){
        $ourMember = wp_get_current_user();
        // echo var_dump($ourMember);
        if(count($ourMember->roles) == 1 AND $ourMember->roles[0] == 'subscriber'){
            wp_redirect(site_url('/'));
            exit;
        }
    }
    add_action('admin_init', 'redirectToFrontend');
    
    //Ta bort adminpanelen när subscribers loggar in
    function removeAdminBarForSubs(){
        $ourMember = wp_get_current_user();
        // echo var_dump($ourMember);
        if(count($ourMember->roles) == 1 AND $ourMember->roles[0] == 'subscriber'){
            show_admin_bar( false );
        }
    }
    add_action('wp_loaded', 'removeAdminBarForSubs');

    //Byt url på login-logga, som annars tar dig till wordpress.com
    function myHeaderUrl(){
        return esc_url(site_url('/'));
    }

    add_filter('login_headerurl', 'myHeaderUrl');

    // Ladda in css för loginen:
    function myLoginCss(){
        wp_register_style( "style", get_template_directory_uri() . '/dist/app.css', [], 1, "all" );
        wp_enqueue_style( "style" );
    }
    add_action('login_enqueue_scripts', 'myLoginCss');

    //ladda bara in de kommande eventsen i archive-event:
    // sen har jag lagt till program också
    function queryPostsGetter($query){
        if(!is_admin() AND is_post_type_archive('program') AND $query->is_main_query()){
            $query->set('posts_per_page', -1);
            $query->set('orderby', 'title');
            $query->set('order', 'ASC');
        }

        if(!is_admin() AND is_post_type_archive('event') AND $query->is_main_query()){
            $today = date('Ymd');
            $query->set('posts_per_page', -1);
            $query->set('meta_key', 'event_date');
            $query->set('orderby', 'meta_value_num');
            $query->set('order', 'ASC');
            $query->set('meta_query', array(
                array(
                    'key' => 'event_date',
                    'compare' => '>=',
                    'value' => $today,
                    'type' => 'numeric'
                )
            ));
        }
    }

    add_action('pre_get_posts', 'queryPostsGetter');