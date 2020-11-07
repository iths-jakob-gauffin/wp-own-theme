<?php

    get_header();

    // while(have_posts()){
    //     the_post(); ?>
            <div class="Blog">
                    
                        <div class="Blog__Wrapper">

                                <h2 class="Blog__Title"><?php if(is_category()){
                                  single_cat_title();
                                } 
                                if(is_author()){
                                  echo 'Posts by '; the_author();
                                };
                                ?></h2>
                                <div class="Blog__RichText">
                                    <h3>Past events</h3>
                                    <p>All these events have passed</p>
                                </div>

                                <div class="Blog__BlogPostsWrapper">
                                    <?php 
                                      //denna tar bla fram pagineringen, till skillnad från archive-event, detta beror på att page-past-events är en custom url som inte har standardpaginering, som t.ex. blog har.

                                      $today = date('Ymd');
                                      $pastEvents = new WP_Query(array(
                                              'paged' => get_query_var( 'paged', 1),
                                              'posts_per_page' => 1,
                                              'post_type' => 'event',
                                              'meta_key' => 'event_date',
                                              'orderby' => 'meta_value_num',
                                              'order' => 'DESC',
                                              'meta_query' => array(
                                                  array(
                                                      'key' => 'event_date',
                                                      'compare' => '<',
                                                      'value' => $today,
                                                      'type' => 'numeric'
                                                  )
                                              )
                                      ));

                                      // echo var_dump($pastEvents);

                                      while($pastEvents->have_posts()){
                                        $pastEvents->the_post(); 
                                        $eventDate = new DateTime(get_field('event_date'));
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
                                                                        <span class="BlogPost__Date"><?php echo $eventDate->format('j F, Y') ?></span>
                                                                        <!-- <span class="BlogPost__Date"><?php the_time('j F, Y'); ?></span> -->
                                                                        by <span class="BlogPost__Author"><?php the_author_posts_link(); ?></span>
                                                                        in <span class="BlogPost__Category"><?php echo get_the_category_list(', '); ?></span>
                                                                    </div>
                                                                    <div class="BlogPost__Preamble">
                                                                        <?php the_excerpt(); ?> 
                                                                    </div>
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
                                    //den här håller ordning på pogineringen
                                    echo paginate_links(array(
                                      'total' => $pastEvents->max_num_pages
                                    ));
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