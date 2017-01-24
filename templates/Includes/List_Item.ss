<div>
    <a href="$ObjectLink" title="$Title">
        <div class="thumbnail text-center default-image">
            <% include Single_Image %>

            <div class="mask">
                <div class="info"><%t DataObjectPage.READ_MORE "Read More" %></div>
            </div>
        </div>


        <div class="clearfix">
            <p class="title">$Title.LimitCharacters(70)</p>
            <p class="details">$Title.LimitCharacters(40)</p>
            <p class="details">$Title.LimitCharacters(40)</p>
        </div>		
    </a>
</div>