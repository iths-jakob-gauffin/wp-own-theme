<?php

    get_header();

    while(have_posts()){
        the_post(); ?>
            <main class="Single">

                <?php 
                  pageBanner(array(
                    'title' => 'Detta är en "prop" från single-program',
                    'wpPage' => 'This is from single-program.php',
                    'photo' => 'https://images.unsplash.com/photo-1604843843970-bffd3e95659f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'

                  ));
                ?>

                <div class="container--main">
                
                    <section class="Single__Content">
                      <?php the_content(); ?>
                    </section>
                  
                  <section class="Single__ProfessorBox">

                    <?php 
                      $relatedProfessors = new WP_Query(array(
                        'post_type' => 'professor',
                        'orderby' => 'title',
                        'order' => 'ASC',
                        'meta_query' => array(
                          array(
                            'key' => 'related_program',
                            'compare' => 'LIKE',
                            'value' => '"' . get_the_ID() . '"'
                          )
                        )
                      ));
                      
                      if($relatedProfessors->have_posts()){
                        echo "<h4 class='Single__RelatedHeader'>" . get_the_title() . " Professors:</h4><ul class='ProfessorCardList'>";

                        while($relatedProfessors->have_posts()){
                          $relatedProfessors->the_post();
                          ?>
                            <li class="ProfessorCard">
                              <a style="font-size: 2.3rem" href="<?php the_permalink(); ?>">
                                <img src="<?php the_post_thumbnail_url('professorLandscape'); ?>" alt="" class="ProfessorCard__CardImage">
                                <span class="ProfessorCard__CardTitle">
                                <?php 
                                    the_title();
                                  ?>
                                </span>
                              </a>
                            </li>
                          <?php
                        } 
                        echo "</ul>";
                      }

                      wp_reset_postdata();
                    ?>
                  </section>

                      <?php
                      $relatedEvents = new WP_Query(array(
                        'post_type' => 'event',
                        'meta_key' => 'event_date',
                        'orderby' => 'meta_val_num',
                        'order' => 'ASC',
                        'meta_query' => array(
                          array(
                            'key' => 'event_date',
                            'compare' => '>=',
                            'value' => $today,
                            'type' => 'numeric'
                          ),
                          //denna nya arrayen (sett mot frontpage.php) gör jag för att få ut de kommande eventsen som har med programmet att göra. Anledningen till att ha så många fnuttar på value är för att vi querary databasen som skriver om alla ids till konstiga strängar, men för att hitta idt så måste det var aomgärdat av dubbelfnuttar.
                          array(
                            'key' => 'related_program',
                            'compare' => 'LIKE',
                            'value' => '"' . get_the_ID() . '"'
                          )
                        )
                      ));

                      if($relatedEvents->have_posts()){
                        echo "<h4 class='Single__RelatedHeader'>Upcoming Events for " . get_the_title() . ":</h4><ul>";
                        while($relatedEvents->have_posts()){
                          $relatedEvents->the_post();
                          ?>
                            <li>
                              <span style="font-size: 2.3rem; color: black">
                                <?php 
                                $eventDate = new DateTime(get_field('event_date')); 
                                echo $eventDate->format('M');
                                ?>
                              <span>
                              <span style="font-size: 2.3rem; color: black">
                                <?php 
                                echo $eventDate->format('d');
                                ?>
                              <span>
                              <a style="font-size: 2.3rem" href="<?php the_permalink(); ?>">
                                <?php 
                                  the_title();
                                ?>
                              <a>
                            </li>
                          <?php
                        }
                        
                      }
                      echo "</ul>";
                    
                    ?>

                  
                </div>
                    
            </main>
        <?php
    }

    get_footer();

?> 