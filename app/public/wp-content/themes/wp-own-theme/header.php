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
                    <?php 
                        wp_nav_menu( array(
                            'theme_location' => 'headerMenuLocation'
                        ) )
                    ?>
                    <!-- <ul class="Header__NavList">
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url(); ?>" class="Header__Link">Home</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="#" class="Header__Link">Courses</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="#" class="Header__Link">Blog</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url('/about-us')?> " class="Header__Link">About Us</a>
                        </li>
                        <li class="Header__ListItem">
                            <a href="<?php echo site_url('/contact-us')?>" class="Header__Link">Contact Us</a>
                        </li>
                    </ul> -->
                </nav>
                <div class="Header__ButtonRoundWrapper">
                    <button class="ButtonRound">Be A Contributor</button>
                    <button class="ButtonRound">Login</button>
                </div>
            </header>
        <!-- </div> -->
