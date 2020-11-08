<?php

    get_header();

    while(have_posts()){
        the_post(); ?>
            <main class="Single">

                <?php 
                    pageBanner(array(
                        'wpPage' => 'This is from single-professor.php'
                    ));
                    ?>

                    <div class="container--main">
                        <div class="SingleProfessor__ContentWrapper">
                            <div class="SingleProfessor__ImageWrapper">
                                <img src="<?php the_post_thumbnail_url('professorPortrait'); ?>" alt="">
                            </div>
                            <section class="Single__Content">
                                <?php echo "<p>" . get_the_content() . "</p>";  ?>
                            </section>
                            
                        </div>

                        <?php 
                            $relatedPrograms = get_field('related_program');

                            if(isset($relatedPrograms)){
                                echo "<h4 style='color: black; font-size: 2rem'>Subject(s) taught</h4>";
                                echo "<ul>";
                                foreach($relatedPrograms as $program){
                                    ?>
                                    <li style="margin-top: 1rem"><a href="<?php the_permalink( $program ); ?>"><?php echo $program->post_title; ?></a></li>
                                <?php
                                }
                                echo "</ul>";
                            }
                        ?>

                    </div>

                        <!-- <div class="SingleEvent__Wrapper">
                            <main class="SingleEvent__Main">

                                <h2 class="SingleEvent__Title"><?php the_title() ?></h2>
                                <div class="SingleProfessor__ContentWrapper">
                                    <div class="SingleProfessor__ImageWrapper">
                                        <img src="<?php the_post_thumbnail_url('professorPortrait'); ?>" alt="">
                                    </div>
                                    <div class="SingleEvent__Content"><?php the_content(); ?></div>
                                </div>

                                    <?php 
                                        $relatedPrograms = get_field('related_program');

                                        if(isset($relatedPrograms)){
                                            echo "<h4 style='color: black; font-size: 2rem'>Subject(s) taught</h4>";
                                            echo "<ul>";
                                            foreach($relatedPrograms as $program){
                                                ?>
                                                <li><a href="<?php the_permalink( $program ); ?>"><?php echo $program->post_title; ?></a></li>
                                            <?php
                                            }
                                            echo "</ul>";
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
                        </div> -->
            </main>
        <?php
    }

    get_footer();

?> 