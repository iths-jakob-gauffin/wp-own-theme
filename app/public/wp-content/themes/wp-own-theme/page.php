<?php

    // get_header();
    wp_head();

    while(have_posts()){
        the_post(); ?>
            <div class="container--main">
                <?php the_content(); ?> 
            </div>
        <?php
    }

    // get_footer();

?> 