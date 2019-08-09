{**
 * templates/frontend/objects/issue_summary.tpl
 *
 * Copyright (c) 2018 Vitaliy Bezsheiko
 * Distributed under the GNU GPL v3.
 *}
{if $issue->getShowTitle()}
    {assign var=issueTitle value=$issue->getLocalizedTitle()}
{/if}
{assign var=issueSeries value=$issue->getIssueSeries()}
{assign var=issueCover value=$issue->getLocalizedCoverImageUrl()}

<div class="card issue vertical">

    <header>
        Current Issue |
        <time datetime="{$issue->getDatePublished()|date_format:"%Y-%m-%d"}">
            {$issue->getDatePublished()|date_format:"%d %B %Y"}
        </time>
    </header>


    {if $issueCover}
        <a class="cover img-thumbnail" href="{url op="view" path=$issue->getBestIssueId()}">
            <img class="card-img-top" src="{$issueCover|escape}"{if $issue->getLocalizedCoverImageAltText() != ''} alt="{$issue->getLocalizedCoverImageAltText()|escape}"{/if}>
        </a>
    {/if}
</div>
