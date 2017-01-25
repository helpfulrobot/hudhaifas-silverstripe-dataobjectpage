<div>
    <a <% if not $isObjectDisabled %>href="$ObjectLink"<% end_if %> title="$Title">
        <div class="thumbnail text-center col-sm-12 col-xs-4">
            <% include List_Image %>

            <% if not $isObjectDisabled %>
                <div class="mask">
                    <div class="info"><%t DataObjectPage.MORE_ABOUT 'More' %></div>
                </div>
            <% end_if %>
        </div>


        <div class="content col-sm-12 col-xs-8">
            <p class="title">$Title.LimitCharacters(70)</p>
            <% loop ObjectDetails %>
            <p class="details"><% if $Title %>$Title:<% end_if %> $Value</p>
            <% end_loop %>
        </div>		
    </a>
</div>