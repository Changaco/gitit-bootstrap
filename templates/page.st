<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>$pagetitle$ - $wikititle$</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="$base$/css/gitit.min.css" />
        $if(feed)$
        <link href="$base$/_feed/" type="application/atom+xml" rel="alternate" title="Sitewide ATOM Feed" />
        <link href="$base$/_feed$pageUrl$" type="application/atom+xml" rel="alternate" title="This page's ATOM Feed" />
        $endif$
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-10 col-md-push-2" id="maincol">
                    <div class="hidden-print">
                        $userbox()$
                        $tabs$
                    </div>
                    $content()$
                    $if(markuphelp)$
                        $markuphelp()$
                    $endif$
                </div>
                <div class="col-md-2 col-md-pull-10 hidden-print" id="sidebar">
                    <div class="row">
                        $sidebar()$
                    </div>
                </div>
                <div class="col-md-10 col-md-push-2 hidden-print">
                    $footer()$
                </div>
            </div>
        </div>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <script src="$base$/js/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="$base$/js/gitit.js"></script>
        $expire()$
        $getuser()$
    </body>
</html>
