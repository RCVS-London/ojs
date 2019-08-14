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
        {if $homepageImage}
            <div class="row">
                <div class="col-md-12">
                    <img class="img-fluid homepage_image" src="{$publicFilesDir}/{$homepageImage.uploadName|escape}" alt="{$homepageImageAltText|escape}">
                </div>
            </div>
            <div class="homepage-image-wrapper col-md-12">
                <img class="img-fluid homepage_image" src="{$publicFilesDir}/{$homepageImage.uploadName|escape}" alt="{$homepageImageAltText|escape}">
            </div>
        {/if}

        <div class="row">
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

        <div class="row">
            <div class="col-md-6">
                <div class="submission">
                    <h2>Publish with Veterinary Evidence</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <div style="max-width: 230px; text-align: center; margin-bottom: 25px;">
                                <img style="box-shadow: 0 2px 10px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.1);" src="/plugins/themes/oldGregg/images/submission.png" />
                            </div>
                        </div>
                        <div class="col-md-6" style="display: flex; align-items: center; justify-content: center; flex-direction: column;">
                            <a class="bttn" style="width: 230px" href="{url page="about" path="submissions"}">Submission instructions</a>
                            <br />
                            <a class="bttn" style="width: 230px" href="{url page="submission" op="wizard"}">Make a Submission</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h2>Announcements</h2>
                <ul style="list-style-type: none;">
                    {foreach from=$announcements item=announcement key=k}
                        <li>
                            <div class="card horizontal" style="border: 0;">
                                <h3 class="mb10 extra-tight-line-height word-wrap" itemprop="name headline">
                                    {$announcement->getLocalizedTitle()}
                                </h3>
                                <div class="card-body">
                                    {$announcement->getLocalizedDescriptionShort()}
                                </div>
                            </div>
                        </li>
                    {/foreach}
                </ul>
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
                <h2>Browse by Species</h2>
                <ul>
                    {foreach from=$categories item=category key=k}
                        <li><a href="{url page="catalog" op="category" path="{$category->getPath()}"}">{$category->getLocalizedTitle()}</a></li>
                    {/foreach}
                </ul>
            </div>
        </div>

    </div>
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
