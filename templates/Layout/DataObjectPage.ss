<div class="row" style="margin-bottom: 1.5em;">
    <div class="col-md-12">
        $ObjectSearchForm
    </div>
</div>

<div class="row">
    <% include List_Side %>

    <% include List_Grid %>
</div>

<% if Results  %>
    <div class="row">
        <% with $Results %>
            <% include List_Paginate %>
        <% end_with %>
    </div>
<% end_if %>

