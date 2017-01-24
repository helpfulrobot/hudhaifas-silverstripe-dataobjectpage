<div class="col-md-9">
    <div class="row dataobject-details">
        <div class="col-md-4">
            <a href="$ObjectLink" title="$Title">
                <div class="thumbnail text-center">
                    <% include Single_Image %>
                </div>
            </a>
        </div>

        <div class="col-md-8">
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
