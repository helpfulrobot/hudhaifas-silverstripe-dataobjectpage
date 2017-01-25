<div class="col-md-9">
    <div class="row dataobject-details">
        <div class="col-sm-4">
            <a title="$Title">
                <div class="thumbnail text-center imgBox">
                    <% include Single_Image %>
                </div>
            </a>
        </div>

        <div class="col-sm-8">
            <h4><a href="$ObjectLink" title="$Title">$Title</a></h4>
            
            <% loop ObjectDetails %>
                <p class="details"><% if $Title %>$Title:<% end_if %> $Value</p>
            <% end_loop %>
        </div>
    </div>

    <div class="row">
        <% include Single_Tabs %>
    </div>
</div>
