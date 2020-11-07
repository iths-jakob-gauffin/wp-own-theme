<?php

    get_header();

    // while(have_posts()){
    //     the_post(); ?>
            <div class="Blog">
                    
                        <div class="Blog__Wrapper">
                                <div class="Blog__RichText">
                                    <h3>Here is the Program archive</h3>
                                    <p>This is archive-program.php</p>
                                </div>
                                <ul>
                                  <?php 
                                    while(have_posts()){
                                      the_post();
                                      ?>
                                          <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>
                                      <?php
                                  }
                                  ?>
                                </ul>

                                <?php 
                                    echo paginate_links();
                                ?>

                                
                            
                        </div>
                    </div>
            </div>
        <?php
    // }

    get_footer();

?>