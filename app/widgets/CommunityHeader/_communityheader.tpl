<a onclick="CommunityHeader_ajaxTestPublish('{$server}', '{$node}')" class="button action color" title="{$c->__('menu.add_post')}">
    <i class="zmdi zmdi-edit"></i>
</a>
<ul class="list thick">
    <li>
        {if="$subscription == null"}
            <a class="button oppose green color" title="{$c->__('group.subscribe')}"
            onclick="CommunityHeader_ajaxAskSubscribe('{$item->server|echapJS}', '{$item->node|echapJS}')">
                Join
            </a>
        {else}
            <a class="button oppose flat" title="{$c->__('group.unsubscribe')}"
            onclick="CommunityHeader_ajaxAskUnsubscribe('{$item->server|echapJS}', '{$item->node|echapJS}')">
                Leave
            </a>
        {/if}
        <span class="primary icon active gray" onclick="history.back()">
            <i class="zmdi zmdi-arrow-back"></i>
        </span>
        <p class="line">
            {if="$item != null"}
                {if="$item->name"}
                    {$item->name}
                {else}
                    {$item->node}
                {/if}
            {else}
                {$node}
            {/if}
        </p>
        {if="$item != null && $item->description"}
            <p class="line" title="{$item->description|strip_tags}">
                {$item->description|strip_tags}
            </p>
        {else}
            <p class="line">{$server}</p>
        {/if}
    </li>
</ul>