<?php
/* template name: mal for undersida 2*/
?>
<?php get_header();?>

<main>
    <section>
        <div class="container">
            <div class="row">
                <div id="primary" class="col-xs-12 col-md-9 col-md-push-3">
                <?php while (have_posts()){ ?>
                    <?php the_post();?>
                    <img src="<?php the_post_thumbnail_url();?>" />
                    <h1><?php the_title();?></h1>
                    <p><?php the_content();?></p>
                    <?php }?>
                </div>
                <aside id="secondary" class="col-xs-12 col-md-3 col-md-pull-9">
                    <ul class="side-menu">
                    <?php get_sidebar();?>
                    </ul>
                </aside>
            </div>
        </div>
    </section>
</main>
<?php get_footer();?>