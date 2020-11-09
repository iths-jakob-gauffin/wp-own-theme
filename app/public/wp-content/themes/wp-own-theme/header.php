<!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo( 'charset' )?>">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>
        <!-- <div class="container"> -->
        <header class="Header">
                <h1 class="Header__Title"><a href="<?php echo site_url('/'); ?>">Eget temasajt</a></h1>
                <nav class="Header__Nav">
                    <ul class="Header__NavList">
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url(); ?>" 
                            class="<?php 
                                    $cssClass = (is_front_page()? 'Header__Link Header__Link--CurrentMenuItem' : 'Header__Link');
                                    echo $cssClass ?>"
                            >Home</a>
                        </li>
                        <li class="Header__ListItem">
                            <a 
                            href="<?php echo site_url('/community'); ?>" 
                            class="<?php 
                                    $cssClass = (is_page('community')? 'Header__Link Header__Link--CurrentMenuItem' : 'Header__Link');
                                    echo $cssClass ?>"
                            >Community</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url('/blog'); ?>" 
                            class="<?php 
                                    if(get_post_type() == 'post'){
                                        $cssClass = 'Header__Link Header__Link--CurrentMenuItem';
                                    } else {
                                        $cssClass = 'Header__Link';
                                    }
                                    echo $cssClass ?>"
                            >Blog</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url('/about-us')?> " 
                            class="<?php 
                                    if(is_page('about-us') or wp_get_post_parent_id( get_the_ID() ) === 7){
                                        $cssClass = 'Header__Link Header__Link--CurrentMenuItem';
                                    } else {
                                        $cssClass = 'Header__Link';
                                    }
                                    echo $cssClass ?>"
                            >About Us</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url('/contact-us')?>" 
                            class="<?php 
                                    $cssClass = (is_page('contact-us')? 'Header__Link Header__Link--CurrentMenuItem' : 'Header__Link');
                                    echo $cssClass ?>"
                            >Contact Us</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url('/programs')?>" 
                            class="<?php 
                                    $cssClass = ($post->post_type === "program" ? 'Header__Link Header__Link--CurrentMenuItem' : 'Header__Link');
                                    echo $cssClass ?>"
                            >Programs</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url('/events')?>" 
                            class="<?php 
                                    if($post->post_type === 'event' OR is_page('past-events')){
                                        $cssClass = 'Header__Link Header__Link--CurrentMenuItem';
                                    } else {
                                        $cssClass = 'Header__Link';
                                    }
                                    echo $cssClass ?>"
                            >Events</a>
                        </li>
                    </ul>
                </nav>
                <div class="Header__ButtonRoundWrapper">
                <?php 
                    if(is_user_logged_in()){ ?>
                        <span class="Header__LoggedInText"><?php
                        $user = wp_get_current_user();
                        echo "Inloggad som: " . $user->display_name; ?></span>
                        <a href="<?php echo wp_logout_url(home_url()); ?>" class="ButtonRound">Log Out</a>
                        <?php
                    } else { ?>
                        <a href="<?php echo wp_registration_url(); ?>" class="ButtonRound">Sign up</a>
                        <a href="<?php echo var_dump(wp_login_url()); echo wp_login_url(); ?>" class="ButtonRound">Log in</a>
                        <?php
                    }
                    ?>
                </div>
            </header>
        <!-- </div> -->
