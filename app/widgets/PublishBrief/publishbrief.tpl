<header  id="publishbrief" class="card shadow">
    <ul class="block list">
        <li>
            <span id="menu" class="primary on_mobile icon bubble active gray" onclick="MovimTpl.toggleMenu()">
                <i class="zmdi zmdi-menu"></i>
            </span>
            <span class="primary on_desktop icon bubble gray">
                <i class="zmdi zmdi-edit"></i>
            </span>
            <span id="button_send"
                  class="control icon gray active"
                  onclick="PublishBrief_ajaxPublish(MovimUtils.formToJson('brief'));">
                <i class="zmdi zmdi-mail-send"></i>
            </span>
            <form onsubmit="return false;" name="brief">
                <div>
                    <textarea
                        name="title"
                        id="title"
                        rows="1"
                        onkeyup="MovimUtils.textareaAutoheight(this);"
                        placeholder="{$c->__('publishbrief.placeholder')}"
                        type="text"></textarea>
                </div>
                <input
                    type="checkbox"
                    id="open"
                    name="open"
                    style="display: none;"
                >
            </form>
        </li>
        <li>
            <span class="primary icon gray bubble active privacy"
                  onclick="PublishBrief.togglePrivacy()">
                <i class="zmdi zmdi-lock-outline"></i>
            </span>
            <p class="normal">
                <a class="button flat gray disabled" href="#">
                    <i class="zmdi zmdi-image"></i>
                </a>
                <a class="button flat gray disabled on_desktop" href="#">
                    <i class="zmdi zmdi-link"></i>
                </a>

                <a class="button flat gray oppose" href="{$c->route('publish')}">
                    {$c->__('publishbrief.post')} <i class="zmdi zmdi-format-align-left"></i>
                </a>
            </p>
        </li>
    </ul>
</header>