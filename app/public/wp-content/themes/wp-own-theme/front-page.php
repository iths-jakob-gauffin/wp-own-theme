<?php
    get_header(); ?>

    <main class="FrontPage">
        <div class="FrontPage__StartBackground">
            
            <div class="container">
                <section class="FrontPage__Entry">
                    <h1 class="FrontPage__Title">Get access to Unlimited Educational Resources. Everywhere, Everytime!</h1>
                </section>
                    
            </div>
        </div>
        <section class="FrontPage__BlogSection">
            <div class="container"> 
                <div class="FrontPage__BlogContentWrapper">

                    <div class="FrontPage__BlogContentInner">
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
                                    <p class="FrontPage__BlogText">
                                        <?php 
                                        $stuff = get_the_content();
                                        echo wp_trim_words( get_the_content(), 4, '...');
                                        
                                        ?></p><a href="<?php the_permalink(); ?>">Read more</a>
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

