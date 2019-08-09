<article class="card horizontal">
    <header>
        {$article->getSectionTitle()|escape} |
        <time datetime="{$article->getDatePublished()|date_format:"%Y-%m-%d"}">
            {$article->getDatePublished()|date_format:"%d %B %Y"}
        </time>
    </header>
    <h3 class="mb10 extra-tight-line-height word-wrap" itemprop="name headline">
        <a href="{url page="article" op="view" path=$article->getBestArticleId()}">
            <img src="{$article->getLocalizedCoverImageUrl()|escape}" alt="" width="150">
            {$article->getLocalizedTitle()|escape}
        </a>
        <div style="clear: both"></div>
    </h3>

    <footer>
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
    </footer>
</article>