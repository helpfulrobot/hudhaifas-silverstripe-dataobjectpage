<div class="col-xs-12 col-sm-6 col-md-12">
    <div class="row dataobject-related">
        <div class="dataobject-image col-xs-3 col-sm-4">
            <a href="$ObjectLink" title="$Title">
                <div class="thumbnail text-center">
                    <% include List_Image %>
                </div>
            </a>
        </div>

        <div class="col-xs-9 col-sm-8">
            <p class="title"><a href="$ObjectLink" title="$Title">$Title.LimitCharacters(50)</a></p>
            <% loop ObjectDetails %>
                <p class="details"><% if $Title %>$Title:<% end_if %> $Value</p>
            <% end_loop %>
        </div>
    </div>
</div>