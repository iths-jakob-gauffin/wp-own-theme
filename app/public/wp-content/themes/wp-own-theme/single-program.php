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
                                        <a href="<?php echo get_post_type_archive_link( 'program' ) ?>" class="SingleEvent__BreadcrumbHomeLink">All Programs</a>
                                        <a href="" class="Single__BreadcrumbLink"><?php the_title(); ?></a>
                                    </div>                                    
                                    <?php
                                // }
                                ?>

                                <h1 style="color: black">This is single-program.php</h1>
                                <h2 class="SingleEvent__Title"><?php the_title() ?></h2>
                                <div class="SingleEvent__Content"><?php the_content(); ?></div>
                               
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

                                  // echo var_dump($relatedEvents);

                                  if($relatedProfessors->have_posts()){
                                    echo "<h4 style='color: black; font-size: 2rem'>" . get_the_title() . " Professors:</h4>";
                                    while($relatedProfessors->have_posts()){
                                      $relatedProfessors->the_post();
                                      ?>
                                        <li>
                                          <a style="font-size: 2.3rem" href="<?php the_permalink(); ?>">
                                            <?php 
                                              the_title();
                                            ?>
                                          <a>
                                        </li>
                                      <?php
                                    } 
                                  }

                                  wp_reset_postdata();

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

                                  // echo var_dump($relatedEvents);

                                  if($relatedEvents->have_posts()){
                                    echo "<h4 style='color: black; font-size: 2rem'>Upcoming Events for " . get_the_title() . ":</h4>";
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
                                
                                ?>
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