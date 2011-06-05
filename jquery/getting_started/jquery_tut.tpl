<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head profile="http://gmpg.org/xfn/11">
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
    <title>jQuery Tutorial</title>

    <script type="text/javascript" src="jquery.js"/>
    <style>
      *.blue {
      background-color: blue;
      }
      *.red {
      background-color: red;
      }
      *.green {
      background-color: green;
      }
    </style>

    <script type="text/javascript">
    $(function() {
        $("a").click(function() {
            alert("Hello world!");
        });
        $("#orderedlist").addClass("red");
        $("#orderedlist > li").addClass("blue");
        $("#orderedlist li:last").hover(function() {
            $(this).addClass("green");
        }, function() {
            $(this).removeClass("green");
        });
    });
    $(function() {
        $("#orderedlist").find("li").each(function(i) {
            $(this).append( " BAM! " + i );
        });
    });
    $(function() {
        $("li").not(":has(ul)").css("border", "1px solid black");
    });
    $(function() {
        $("li").find(":has(ul)").parents("li").removeClass("blue");
        $("li:last").parents("ul").each(function(i) { $(this).removeClass("red"); });
        $("li").parents("ol").each(function(i) { $(this).removeClass("red"); });
    });

    </script>

  </head>

  <body>
    <p>
      <a href="">Test Link</a>
    </p>
    <ol id="orderedlist">
      <li>Test 1</li>
      <li>Test 2</li>
      <li>Test 3</li>
      <li>Test 4</li>
      <li>Test 5</li>
      <li>Test 6</li>
      <li><ul><li>Sublist 1</li><li>Sublist 2</li></ul></li>
    </ol>
    <ul id="unorderedlist">
      <li>Test 1</li>
      <li>Test 2</li>
      <li>Test 3</li>
      <li>Test 4</li>
      <li>Test 5</li>
      <li><ul><li>Sublist 1</li><li>Sublist 2</li></ul></li>
    </ul>

  </body>

</html>
