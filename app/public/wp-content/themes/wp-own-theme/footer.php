        <footer class="Footer">
            <div class="Footer__Content">
                <div class="Footer__NavWrapper">
                    <nav class="Footer__Nav">
                        <?php 
                        wp_nav_menu( array(
                            'theme_location' => 'footerMenuLocation1'
                            ) )
                            ?> 
                    </nav>
                    <nav class="Footer__Nav">
                        <!-- <?php 
                        wp_nav_menu( array(
                            'theme_location' => 'footerMenuLocation2'
                            ) )
                            ?>  -->
                    </nav>
                    <nav class="Footer__Nav">
                        <?php 
                        wp_nav_menu( array(
                            'theme_location' => 'footerMenuLocation3'
                            ) )
                            ?> 
                    </nav>
                </div>
            </div>
                    
            <div class="Footer__Bottom"></div>
        </footer>
    <?php wp_footer(); ?> 
    </body>
</html>   