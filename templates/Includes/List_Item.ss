<div>
    <a <% if not $isObjectDisabled %>href="$ObjectLink"<% end_if %> title="$Title">
        <div class="thumbnail text-center default-image">
            <% include Single_Image %>

            <div class="mask">
                <div class="info"><%t DataObjectPage.MORE_ABOUT 'More' %></div>
            </div>
        </div>


        <div class="clearfix">
            <p class="title">$Title.LimitCharacters(70)</p>
            <% loop ObjectDetails %>
                <p class="details"><% if $Title %>$Title:<% end_if %> $Value</p>
            <% end_loop %>
        </div>		
    </a>
</div>