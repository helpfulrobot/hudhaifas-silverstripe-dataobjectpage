<% if $ObjectImage %>
    <img src="$ObjectImage.PaddedImage(300,300).URL" alt="image" class="img-responsive zoom-img" />
<% else %>
    <img src= "dataobjectpage/images/default-image.jpg" alt="" class="img-responsive zoom-img" />

    <div class="caption" style="">
        <h4>$Title.LimitCharacters(110)</h4>
    </div>
<% end_if %>