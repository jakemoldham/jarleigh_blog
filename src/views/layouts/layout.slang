doctype html
html
  head
    title jarleigh
    meta charset="utf-8"
    meta http-equiv="X-UA-Compatible" content="IE=edge"
    meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
    meta name="mobile-web-app-capable" content="yes"
    meta name="apple-mobile-web-app-capable" content="yes"
    meta name="apple-mobile-web-app-status-bar-style" content="black"
    link rel="stylesheet" type="text/css" href="/stylesheets/site.css"
    link rel="stylesheet" href="/assets/styles/stylesheets/highlightjs/styles/default.css"
    script src="/assets/scripts/highlight.pack.js"
    javascript:
      hljs.initHighlightingOnLoad();


  
  body
    == content
    script type="text/javascript" href="/javascripts/site.js"
