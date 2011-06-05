<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head profile="http://gmpg.org/xfn/11">
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
    <title>jQuery Tutorial</title>

    <script type="text/javascript" src="jquery.js"/>
    <style>
    </style>

    <script type="text/javascript">
    $(function() {
    $("#rating").append("Rate this paragraph: ");
    for (var i = 1; i <= 5; ++i) {
        $("#rating").append("<a href='#'>" + i + "</a> ");
    }
    $("#rating a").click(function(e) {
                         e.preventDefault();
                         $.post("add_rating", {rating: $(this).html()}, function(xml) {
                         $("#rating").html(
                         "Thanks for rating, current average: " + $("average", xml).text() +
                         ", number of votes: " + $("count", xml).text());
                         });
                         });
                         
    });
    </script>

  </head>

  <body>
    <p>
      <a href="">Test Link</a>
    </p>
    <p>
      Fancy paragraph!
    </p>

    <div id="rating">
    </div>
  </body>

</html>
