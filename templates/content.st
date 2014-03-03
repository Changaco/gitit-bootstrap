<div class="panel panel-primary" id="main">
    <div class="panel-heading">
        <div class="row">
            <div class="col-sm-7">
                $if(revision)$
                    <h2 class="revision panel-title">Revision $revision$</h2>
                $endif$
            </div>
            <div class="col-sm-5 hidden-print">
                $tabs$
            </div>
        </div>
    </div>
    <div class="panel-body" id="content">
        <h1 class="pageTitle"><a href="$base$$pageUrl$">$pagetitle$</a></h1>
        $if(messages)$
            <div class="messages">
                $messages:message()$
            </div>
        $endif$
        $content$
    </div>
</div>
