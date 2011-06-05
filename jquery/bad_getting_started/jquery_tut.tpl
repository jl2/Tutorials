<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head profile="http://gmpg.org/xfn/11">
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />

    <script type="text/javascript" src="jquery.js"/>

    <title>jQuery Tutorial</title>
    <script>
      $(document).ready(function(){
      $("li a").fadeOut().fadeIn();
      });
    </script>
  </head>
  <body>
    <p>Testing</p>
    <div class="container">
      <ul class="list">
        <li><a href="/jquery_tut">Link here</a></li>
        <li>Text Here</li>
        <li><a href="/jquery_tut">Link here</a></li>
        <li>Text Here</li>
        <li><a href="/jquery_tut">Link here</a></li>
        <li>Text Here</li>
        <li><a href="/jquery_tut">Link here</a></li>
        <li>Text Here</li>
        <li><a href="/jquery_tut">Link here</a></li>
        <li>Text Here</li>
        <li><a href="/jquery_tut">Link here</a></li>
      </ul>
    </div>
    <script>
      $("ul.list li:first-child").css("background-color", "blue");
      $("li a").fadeOut().fadeIn();
    </script>
  </body>
</html>
