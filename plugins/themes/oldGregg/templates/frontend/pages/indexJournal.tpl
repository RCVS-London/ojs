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
            {if $homepageImage}
                <div class="homepage-image-wrapper col-md-12">
                    <img class="img-fluid homepage_image" src="{$publicFilesDir}/{$homepageImage.uploadName|escape}" alt="{$homepageImageAltText|escape}">
                </div>
            {/if}
            <div class="col-md-8">
                <div class="row">
                    {foreach from=$publishedArticles item=article key=k}
                        <div class="recent-wrapper col-md-6">
                            <article>
                                <header>
                                    {$article->getSectionTitle()|escape} |
                                    <time datetime="{$article->getDatePublished()|date_format:"%Y-%m-%d"}">
                                        {$article->getDatePublished()|date_format:"%d %B %Y"}
                                    </time>
                                </header>
                                <h3 class="mb10 extra-tight-line-height word-wrap" itemprop="name headline">
                                    <a href="{url page="article" op="view" path=$article->getBestArticleId()}">
                                        <img src="{$article->getLocalizedCoverImageUrl()|escape}" alt="" height="100" width="100">
                                        {$article->getLocalizedTitle()|escape}
                                    </a>
                                    <div style="clear: both"></div>
                                </h3>

                                <ul>
                                    {foreach from=$article->getAuthors() key=k item=author}
                                        <span>
                                            {$author->getLocalizedFamilyName()|escape}
                                            {if $k<($article->getAuthors()|@count - 1)}
                                                {$author->getLocalizedGivenName()|regex_replace:"/(?<=\w)\w+/":".,"|escape}
                                            {else}
                                                {$author->getLocalizedGivenName()|regex_replace:"/(?<=\w)\w+/":"."|escape}
                                            {/if}
                                        </span>
                                    {/foreach}
                                </ul>
                            </article>

                        </div>
                    {/foreach}
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    {foreach from=$issues item="issue"}
                        {include file="frontend/objects/issue_summary.tpl"}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
