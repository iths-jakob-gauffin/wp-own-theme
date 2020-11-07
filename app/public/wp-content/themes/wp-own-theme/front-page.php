<?php
    get_header(); ?>

    <main class="FrontPage">
        <div class="FrontPage__StartBackground">
            
            <div class="container">
                <section class="FrontPage__Entry">
                    <h1 class="FrontPage__Title">Hejdå Get access to Unlimited Educational Resources. Everywhere, Everytime!</h1>
                </section>
                    
            </div>
        </div>
        <section class="FrontPage__BlogSection">
            <div class="container"> 
                <div class="FrontPage__BlogContentWrapper">

                    <div class="FrontPage__BlogContentInner">
                        <h2 class="FrontPage__BlogSectionTitle">Upcoming events</h2>
                        <ul class="FrontPage__EventList">
                        <?php
                            $today = date('Ymd');
                            $frontPageEvents = new WP_Query(array(
                                    'posts_per_page' => 2,
                                    'post_type' => 'event',
                                    'meta_key' => 'event_date',
                                    'orderby' => 'meta_value_num',
                                    'order' => 'ASC',
                                    'meta_query' => array(
                                        array(
                                            'key' => 'event_date',
                                            'compare' => '>=',
                                            'value' => $today,
                                            'type' => 'numeric'
                                        )
                                    )
                            ));

                            while($frontPageEvents->have_posts()){
                                $frontPageEvents->the_post(); 
                                ?>
                                <li class="FrontPage__EventListItem">
                                    <span class="FrontPage__EventDate FrontPage__EventDate--Month">
                                        <?php 
                                            $eventDate = new DateTime(get_field('event_date'));
                                            echo $eventDate->format('M');
                                            ?>
                                        
                                    </span>   
                                    <span class="FrontPage__EventDate FrontPage__EventDate--Day"><?php echo $eventDate->format('d'); ?></span>   
                                    <strong><a href="<?php the_permalink();?>" class="FrontPage__EventLink"><?php the_title(); ?></a></strong>
                                    <div class="FrontPage__BlogText">
                                        <?php 
                                        if(has_excerpt()){
                                            the_excerpt();
                                        }else{
                                            echo wp_trim_words(get_the_content(), 18, '...'); 
                                        }
                                        ?>
                                    </div>
                                </li>
                                <?php
                            } ?>                        
                        </ul>
                        <a href="<?php echo get_post_type_archive_link('event'); ?>" class="ButtonRound">See all Events</a>

                        <h2 class="FrontPage__BlogSectionTitle">From the blog</h2>
                        <ul class="FrontPage__BlogList">
                            <?php 

                            $frontPagePosts = new WP_Query(array(
                                'posts_per_page' => 3
                            ));                        

                            while($frontPagePosts->have_posts()){
                                $frontPagePosts->the_post(); ?> 
                                <li class="FrontPage__BlogListItem">
                                    <strong><a href="<?php the_permalink(); ?>" class="FrontPage__BlogLink"><?php the_title(); ?></a></strong>
                                    <div class="FrontPage__BlogText">
                                        <?php 
                                            if(has_excerpt()){
                                                the_excerpt(  );
                                            } else{
                                                echo wp_trim_words(get_the_excerpt(), 5);
                                            }
                                        ?>
                                    </div>
                                    <a href="<?php the_permalink(); ?>">Read more</a>
                                </li>
                            <?php 
                            };
                            wp_reset_postdata();
                            ?>
                        </ul> 
                    </div>

                </div>
            </div>
        </section>
    </main>
<?php 
    get_footer();
?>

