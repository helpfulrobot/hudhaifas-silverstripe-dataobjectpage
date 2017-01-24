<% if FiltersList %>
    <div class="col-md-4">
        <% loop FiltersList %>
            <div class="dataobject-side">
                <h5 class="side-menu">$Title</h5>

                <ul>
                    <% loop Items %>
                        <li class="cat-item"><a href="$ObjectLink" title="{$Title}">$Title</a></li>
                    <% end_loop %>
                </ul>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
