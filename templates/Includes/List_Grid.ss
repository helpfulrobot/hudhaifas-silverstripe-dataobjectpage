<div class="<% if FiltersList %>col-md-8<% else %>col-md-12<% end_if %>">
    <% if Results  %>
        <div class="row dataobject-grid">
            <% loop $Results %>
                <div class="<% if Up.FiltersList %>col-sm-4<% else %>col-sm-3<% end_if %> dataobject-item">
                    <% include List_Item %>
                </div>
            <% end_loop %>
        </div>

    <% else %>
        <div class="row">
            <p><%t DataObjectPage.SEARCH_NO_RESULTS 'Sorry, your search query did not return any results.' %></p>
        </div>
    <% end_if %>
</div>