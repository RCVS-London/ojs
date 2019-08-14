{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * Copyright (c) 2018 Vitaliy Bezsheiko
 * Distributed under the GNU GPL v3.
 *
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()|escape}

<div class="page_index_journal">
    <div class="index-page-content">
        <div class="row">
            <div class="col-md-12">
                <div style="height: 350px; background: #ccc; width: 100%; margin-bottom: 25px;">
                    Top Banner
                </div>
            </div>
        </div>

        <div class="row">
            {if $homepageImage}
                <div class="homepage-image-wrapper col-md-12">
                    <img class="img-fluid homepage_image" src="{$publicFilesDir}/{$homepageImage.uploadName|escape}" alt="{$homepageImageAltText|escape}">
                </div>
            {/if}
            <div class="col-md-12">
                <h3>Latest Articles</h3>
                <div class="row">
                    {foreach from=$publishedArticles item=article key=k}
                            <div class="col-md-6" style="margin-bottom: 30px;">
                                {include file="frontend/objects/article_card_horizontal.tpl"}
                            </div>
                    {/foreach}
                </div>
            </div>
        </div>

        <hr />

        <div class="row">
            {if $homepageImage}
                <div class="homepage-image-wrapper col-md-12">
                    <img class="img-fluid homepage_image" src="{$publicFilesDir}/{$homepageImage.uploadName|escape}" alt="{$homepageImageAltText|escape}">
                </div>
            {/if}
            <div class="col-md-12">
                <h3>Most Read Articles</h3>
                <div class="row">
                    {foreach from=$mostRead item=article key=k}
                        <div class="col-md-6" style="margin-bottom: 30px;">
                            {include file="frontend/objects/article_card_horizontal.tpl"}
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>

        <hr />

        <div class="search-block d-none d-sm-block">
            {include file="frontend/objects/search.tpl"}
        </div>

        <hr />

        <div class="row">
            <div class="col-md-6">
                <h2>Podcasts</h2>
                <iframe title="RCVS Knowledge Podcasts" id="multi_iframe" style="border: none;" scrolling="no" allowfullscreen="" src="https://www.podbean.com/media/player/multi?playlist=http%3A%2F%2Fplaylist.podbean.com%2F1468209%2Fplaylist_multi.xml&vjs=1&size=315&share=1&fonts=Helvetica&auto=0&download=1&skin=0" width="100%" height="505"></iframe>
            </div>
            <div class="col-md-6">
                <h2>Right Section</h2>
                <div style="background: #ccc; height: 505px;">Content</div>
            </div>
        </div>

    </div>
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
