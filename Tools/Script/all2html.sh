#!/bin/bash

echo -n ".";

function amCommonHTMLAdds {
   sed '7 i\         <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script><script src="../../Tools/Lib/MyASCIIMathML.js"></script>
        9 i<div class="ym-wrapper">\n<div class="ym-wbox">\n<header>
       11 i</header>\n<main>\n<div class="ym-column linearize-level-1">\n<div class="ym-col1">\n<div class="ym-cbox">\n<section>
       /<\/body>/ i</section>\n</div>\n</main>\n<div class="ym-wbox" />\n<div class="ym-wbox" />\n<footer>\n<div class="ym-wrappe">\n<div class="ym-wbox">\n<p>©  2013 &ndash; Magnus Kronnäs</p>\n</div>\n</div>\</footer>\n</div>\n</div>
       /\ <code>java/ c<pre class="prettyprint lang-java">
       /\<code>bash/ c<pre class="prettyprint lang-bash">
       /<\/code>/ c<\/pre>'
}

function amAddJQuery {
   sed '8 i\         <script src="Tools/Lib/jquery-2.0.3.min.js"></script>\n
        10 i<script>\n$(document).ready(function(){\n$("h3").next().hide();\n$("h3").click(function(){\n$(this).next().slideToggle();\n});\n});\n</script>
'
}

if [ $1 == './index.txt' ]; then
   ./Tools/Bin/multimarkdown index.txt |  amCommonHTMLAdds | amAddJQuery  > index.html;
else
   ./Tools/Bin/multimarkdown $1 |  amCommonHTMLAdds  > ${1//.txt/.html};
fi