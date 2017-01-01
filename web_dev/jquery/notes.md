Some resources on jQuery. 

Lets first take a look at what JQuery encompasses
And learn some of its functions. 

What are the elements of the jQuery language?

Lets use the first 40 minutes to do some research, and test for 10 minutes in the following, and 10 minutes break. 


DOM : document object model
in HTML it is included as a script type :  
this verion of jQuery is being hosted on google, a way to use jquery without downloading it. 
<script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script type = "text/javascript" language = "javascript">

a good way to test would be by creating a test HTML page
// download jQuery and store jquery.js in the same directory
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Demo</title>
</head>
<body>
    <a href="http://jquery.com/">jQuery</a>
    <script src="jquery.js"></script>
    <script>
 
    // Your code goes here.
 
    </script>
</body>
</html>

In order to make sure their code runs when the browser finishes loading the doc, a onload function is used. 

w3schools is a good resource for introduction to the language library and try it yourself examples

jQuery syntax: $(selector).action() ---- 
selector is the HTML/CSS selector that the action will apply to
action() is the jQuery action to be performed

(of course all jQuery runs in side of a document ready event
$(document).ready(function(){...})
 so that its code wont run until the document is finished loading )

 I spent the most time learning some definitions (DOM, jQuery) and going through the w3schools tutorial and examples. w3schools broke down the elements of the jQuery syntax and provided ways to see the code in action. 