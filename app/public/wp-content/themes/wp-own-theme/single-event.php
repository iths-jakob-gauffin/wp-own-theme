<?php

    get_header();

    while(have_posts()){
        the_post(); ?>
            <div class="SingleEvent">

                <div class="SingleEvent__BackgroundImage" style="background-image: url(<?php echo get_theme_file_uri( '/images/guychickdog.webp' )?>); background-position: 50% 25%; background-size: cover;">

                    <div class="SingleEvent__BackgroundOverlay"></div>
                    
                        <div class="SingleEvent__Wrapper">
                            <main class="SingleEvent__Main">

                                <?php 
                                //parent blir 0 om den inte har några barn.
                                $parent = wp_get_post_parent_id(get_the_ID());
                                
                                // if($parent){?>
                                    <div class="SingleEvent__Breadcrumb">
                                        <a href="<?php echo get_post_type_archive_link( 'event' ) ?>" class="SingleEvent__BreadcrumbHomeLink">Events Home</a>
                                        <a href="" class="Single__BreadcrumbLink"><?php the_title(); ?></a>
                                    </div>                                    
                                    <?php
                                // }
                                ?>


                                <h2 class="SingleEvent__Title"><?php the_title() ?></h2>
                                <div class="SingleEvent__Content"><?php the_content(); ?></div>
                            </main>
                                
                            <?php 
                            //denna nedan blir null om currentsidan inte har children. Annars returneras en lista med children.
                            $testArray = get_pages(array(
                                'child_of' => get_the_ID()
                            ));

                            //villkoret blir false om currentsidan sidan inte är en parent, samt om testarray blir null
                            if($parent or $testArray) { ?>
                                <aside class="SingleEvent__ChildrenAside">
                                    <h2 class="SingleEvent__ParentTitle"><a href="<?php echo get_permalink( $parent ); ?>"><?php echo get_the_title($parent)?></a></h2>
                                    <nav class="SingleEvent__ChildrenNav">
                                        <ul class="SingleEvent__ChildrenNavList">
                                            <?php 

                                            if($parent){
                                                $findChildrenOf = $parent;
                                            } else {
                                                $findChildrenOf = get_the_ID();
                                            }
                                            
                                            //sort-column => menu_order justerar ordningen efter vad man väljer att sidan ska vara i wordpress
                                            wp_list_pages(array(
                                                'title_li' => NULL,
                                                'child_of' => $findChildrenOf,
                                                'sort_column' => 'menu_order'
                                            )); 
                                            ?>
                                        </ul>
                                    </nav>
                                </aside>
                            <?php } ?>
                        </div>
                    </div>
            </div>
        <?php
    }

    get_footer();

?> 