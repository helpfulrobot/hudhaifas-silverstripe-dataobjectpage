<div class="col-xs-12 col-sm-6 col-md-12">
    <div class="row dataobject-related">
        <div class="col-md-4 dataobject-image">
            <a href="$Link" title="$Title">
                <div class="thumbnail text-center">
                    <% include Single_Image %>
                </div>
            </a>
        </div>

        <div class="col-md-8">
            <p class="title"><a href="$Link" title="$Title">$Title.LimitCharacters(30)</a></p>
            <p class="details">$Title.LimitCharacters(20)</p>
            <p class="details">$Title.LimitCharacters(20)</p>
        </div>
    </div>
</div>