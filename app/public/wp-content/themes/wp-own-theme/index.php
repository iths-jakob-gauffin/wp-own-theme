<?php

    get_header();

    // while(have_posts()){
    //     the_post(); ?>
            <div class="Blog">

                <!-- <div class="Page__BackgroundImage" style="background-image: url(<?php echo get_theme_file_uri( '/images/guychickdog.webp' )?>); background-position: 50% 25%; background-size: cover;">

                    <div class="Page__BackgroundOverlay"></div>-->
                    
                        <div class="Blog__Wrapper">
                            <!-- <main class="Page__Main"> -->

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


                                <h2 class="Blog__Title"><?php echo wp_title(""); ?></h2>
                                <div class="Blog__RichText">
                                    <h3>Welcome To Our Forever Updated Blog Post!</h3>
                                    <p>Be informed! Never miss a single post.</p>
                                </div>

                                <div class="Blog__BlogPostsWrapper">
                                    <?php 

                                        while(have_posts()){
                                            the_post();
                                            ?>
                                                <div class="Blog__BlogPostWrapper">
                                                    <article class="BlogPost">
                                                        <figure class="BlogPost__Figure">
                                                            <img src="" alt="" class="BlogPost__Image">
                                                            <figcaption class="BlogPost__FigCaption"></figcaption>
                                                        </figure>
                                                        <section class="BlogPost__Section">
                                                            <div class="BlogPost__Content">
                                                                <div class="BlogPost__Text">
                                                                    <h3 class="BlogPost__Title"><?php the_title(); ?></h3>
                                                                    <div class="BlogPost__MetaBox">
                                                                        <span class="BlogPost__Date"><?php the_time('j F, Y'); ?></span>
                                                                        by <span class="BlogPost__Author"><?php the_author_posts_link(); ?></span>
                                                                        in <span class="BlogPost__Category"><?php echo get_the_category_list(', '); ?></span>
                                                                    </div>
                                                                    <p class="BlogPost__Preamble">
                                                                        <?php the_excerpt(); ?> 
                                                                    </p>
                                                                </div>
                                                                <a href="<?php the_permalink(); ?>" class="ButtonRound ButtonRound--White">Read more</a>
                                                            </div>
                                                        </section>
                                                    </article>
                                                </div>
                                            <?php
                                        }

                                    ?>
                                </div>
                                <?php 
                                    echo paginate_links();
                                ?>
                            <!-- </main> -->
                                
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
    // }

    get_footer();

?>