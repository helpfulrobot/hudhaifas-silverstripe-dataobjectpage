<div class="col-xs-12 col-sm-6 col-md-12">
    <div class="row dataobject-related">
        <div class="col-md-4 dataobject-image">
            <a href="$ObjectLink" title="$Title">
                <div class="thumbnail text-center">
                    <% include Single_Image %>
                </div>
            </a>
        </div>

        <div class="col-md-8">
            <p class="title"><a href="$ObjectLink" title="$Title">$Title.LimitCharacters(30)</a></p>
            <% loop ObjectDetails %>
                <p class="details"><% if $Title %>$Title:<% end_if %> $Value</p>
            <% end_loop %>
        </div>
    </div>
</div>