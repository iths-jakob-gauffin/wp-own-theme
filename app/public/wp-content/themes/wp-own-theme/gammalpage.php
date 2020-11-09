<?php

    get_header();

    while(have_posts()){
        the_post(); ?>
            <div class="Page">

                <div class="Page__BackgroundImage" style="background-image: url(<?php echo get_theme_file_uri( '/images/guychickdog.webp' )?>); background-position: 50% 25%; background-size: cover;">

                    <div class="Page__BackgroundOverlay"></div>
                    
                        <div class="Page__Wrapper">
                            <main class="Page__Main">

                                <?php 
                                //parent blir 0 om den inte har några barn.
                                $parent = wp_get_post_parent_id(get_the_ID());
                                
                                if($parent){?>
                                    <div class="Page__Breadcrumb">
                                        <a href="<?php echo get_permalink($parent)?>" class="Page__BreadcrumbHomeLink">Back to <?php echo get_the_title($parent); ?></a>
                                        <a href="" class="Page__BreadcrumbLink"><?php the_title(); ?></a>
                                    </div>                                    
                                    <?php
                                }
                                ?>


                                <h2 class="Page__Title"><?php the_title() ?></h2>
                                <div class="Page__Content"><?php echo the_content(); ?></div>
                            </main>
                                
                            <?php 
                            //denna nedan blir null om currentsidan inte har children. Annars returneras en lista med children.
                            $testArray = get_pages(array(
                                'child_of' => get_the_ID()
                            ));

                            //villkoret blir false om currentsidan sidan inte är en parent, samt om testarray blir null
                            if($parent or $testArray) { ?>
                                <aside class="Page__ChildrenAside">
                                    <h2 class="Page__ParentTitle"><a href="<?php echo get_permalink( $parent ); ?>"><?php echo get_the_title($parent)?></a></h2>
                                    <nav class="Page__ChildrenNav">
                                        <ul class="Page__ChildrenNavList">
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