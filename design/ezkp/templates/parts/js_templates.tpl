{def $searchPlaceholder = '…'|i18n( 'content/keymedia' )
    $search = 'Search for images'|i18n( 'content/keymedia' )
    $close = 'Close'|i18n( 'content/keymedia' )
    $next = 'Next 25 &gt;'
    $prev = '&lt; Previous 25'
}

<script type="text/javascript">
{literal} _KeyMediaTranslations = { {/literal}
    searchPlaceholder : '{$searchPlaceholder}',
    search : '{$search}',
    close : '{$close}',
    next : '{$next}',
    prev : '{$prev}'
{literal} }; {/literal}
</script>

<script type="text/x-handlebars-template" id="tpl-keymedia-browser">
    {include uri="design:handlebars/stack/item/header.tpl" noWrap=true()}
{literal}
    <div class="stack-item-content">
        <div class="header">
            <form onsubmit="javascript: return false;" class="search">
                <input class="q" type="text" name="keymedia-search" placeholder="{{tr.searchPlaceholder}}" />
                <button type="button" class="search">{{tr.search}}</button>
                <a class="prev">{{tr.prev}}</a>
                <a class="next">{{tr.next}}</a>

                <button type="button" class="close">{{tr.close}}</button>
            </form>
        </div>

        <div class="body">
        {{body}}
        </div>
    </div>
{/literal}
</script>

<script type="text/x-handlebars-template" id="tpl-keymedia-scaler">
    {include uri="design:handlebars/stack/item/header.tpl" noWrap=true()}
{literal}
    <div class="stack-item-content">
        <div class="header">
            <ul>
            {{#each versions}}
                <li>
                    <a>
                        <p data-size=[{{size}}]></p>
                        <h2>{{name}}</h2><br />
                        <span></span>
                    </a>
                    <div class="overlay"></div>
                </li>
            {{/each}}
            </ul>
        </div>
        <div class="body">
            <div class="image-wrap">
                <img src="{{image}}" />
            </div>
            <div id="keymedia-scaler-controls">
            </div>
        </div>
    </div>
{/literal}
</script>

<script type="text/x-handlebars-template" id="tpl-keymedia-item">
{literal}
    <div class="item">
        <a class="pick" data-id="{{id}}">
            <img src="{{thumb.url}}" />
            <span class="meta">{{filename}} ({{width}}x{{height}})</span>
            <span class="share{{#if shared}} shared{{/if}}"></span>
        </a>
    </div>
{/literal}
</script>
