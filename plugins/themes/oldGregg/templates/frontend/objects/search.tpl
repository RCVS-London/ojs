<form class="input-group" action="{url page="search" op="search"}" method="post" role="search">
    {csrf}
    <div class="form-control search">
        <select name="category_id" onchange="this.classList.add('selected')">
            <option>All Categories</option>
            {foreach from=$categories item=category key=k}
                <option value="{$category->getId()}">{$category->getTitle($currentLocale)}</option>
            {/foreach}
        </select>
        <input type="text" name="query" value="{$searchQuery|escape}" placeholder="Search Veterinary Evidence" />
        <input type="submit" value="" />
        <div style="clear: both"></div>
    </div>
</form>