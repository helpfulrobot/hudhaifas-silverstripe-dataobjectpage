<div class="col-md-3">
    <div class="row">
        <h4 class="col-md-12"><%t DataObjectPage.ALSO_SEE 'Also See' %></h4>

        <% loop RelatedList.Limit(4) %>
            <% include Single_Related %>
        <% end_loop %>
    </div>
</div>