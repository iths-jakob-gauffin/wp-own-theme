<?php

    get_header();

    while(have_posts()){
        the_post(); ?>
            <main class="Page">

                <div class="Page__BackgroundImage" style="background-image: url(<?php echo get_theme_file_uri( '/images/guychickdog.webp' )?>); background-position: 50% 25%; background-size: cover;">

                    <div class="Page__BackgroundOverlay"></div>
                    
                        <div class="Page__Wrapper">
                            <h2 class="Page__Title"><?php the_title() ?></h2>
                            <div class="Page__Content"><?php echo the_content(); ?></div>
                        </div>
                    </div>
            </main>
        <?php
    }

    get_footer();

?> 