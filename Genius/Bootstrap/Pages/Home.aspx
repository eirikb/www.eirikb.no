<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Page masterpagefile="~site/_catalogs/masterpage/bootstrap.master" title="Genius" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="PlaceHolderMain">
    <section id="sale">
        <div class="page-header">
            <h1>Products<small>Components, plugins and Web Parts for SharePoint Online</small></h1>
        </div>
        <div class="row">
            <div class="span8">
                <ul class="thumbnails">
                    <li class="span4">
                        <div class="caption"><h1>Essentaials</h1></div>
                        <a class="thumbnail" href="#essentials">
                            <img src="img/essentials.png" alt="Essentials">
                            <div class="essentials twelve-point-star"></div>
                            <label class="essentials">Free!</label>
                        </a>
                    </li>
                    <li class="span4">
                        <div class="caption"><h1>Enhanced lookup</h1></div>
                        <a class="thumbnail" href="#enhancedlookup">
                            <img src="img/enhancedlookup3.png" alt="Enhanced Lookup">
                            <div class="enhancedlookup twelve-point-star"></div>
                            <label class="enhancedlookup">$299</label>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <section id="essentials">
        <div class="page-header">
            <h1>Essentials</h1>
        </div>
        <div class="row">
            <div class="span12">
                <h3>The free <i>Genius</i> package</h3>
                <p>This pacakge is essential for other solutions provided by Genius AS. This is why it is free of any charge.</p>
                <p>Developers can use any utility function available in the package as they wish.</p>
                <p>The package includes and loads the most common libraries:</p>
                <ul class="unstyled">
                    <li><a href="http://jquery.com" target="_blank">jQuery</a></li>
                    <li><a href="http://underscore.org" target="_blank">underscore.js</a></li>
                </ul>
            </div>
            <div class="span12">
                <h3>Enhanced Lookup</h3>
                <dl class="dl-horizontal">
                    <dt>Scope</dt>
                    <dd>Site collection</dd>
                    <dt>Online</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                    <dt>Foundation</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                    <dt>Standard</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                    <dt>Enterprise</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                </dl>
                <p><a class="btn btn-large" href="wsp/Essentials.wsp"><i class="download"></i>Download</a></p>
            </div>
            <div class="span12">
                <button class="btn btn-info" data-toggle="collapse" data-target="#essentials-fordevs">For Developers</button>
 
                <div id="essentials-fordevs" class="collapse">
                    <h3>genius.loadScript</h3>
                    <p>This is a JavaScript function which let developers load scripts. It can take these different arguments:</p>
                    <ul>
                        <li><b>loadScript(nameOfScript, urlToScript, callbackFunction)</b></li>
                        <li><b>loadScript(nameOfScript, urlToScript)</b></li>
                        <li><b>loadScript(nameOfScript, callbackFunction)</b></li>
                        <li><b>loadScript(urlToScript)</b></li>
                    </ul>
                    <p>
                        <b>nameOfScript</b> is used to identify scripts so they are only loaded once, the practice here is to use <i>lower case</i> names.
                        Example usage:
                    </p>
                    <pre class="prettyprint linenums">
// Load jQuery from code.jquery.com
genius.loadScript('jquery', 'http://code.jquery.com/jquery.min.js', function() {
    // Load jQuery once more, but rely on the fact that it's already added to the "load" queue
    genius.loadScript('jquery', function() {
        $(function() {
            alert('It works!');
        });
    });
});
                    </pre>
                    <p>This can also be used in Elements.xml (Empty element in Visual Studio)</p>
                    <pre class="prettyprint linenums">
&lt;Elements xmlns="http://schemas.microsoft.com/sharepoint/"&gt;
    &CustomAction Location="ScriptLink" Sequence="1101"
                  ScriptBlock="genius.loadScript('~site/mycompany/js/application.js');" /&gt;
&lt;/Elements&gt;
                    </pre>
                </div>
            </div>
        </div>
    </section>

    <section id="enhancedlookup">
        <div class="page-header">
            <h1>Enhanced lookup</h1>
        </div>
        <div class="row">
            <div class="span8">
                <div class="hero-unit">
                    <img src="img/enhancedlookup1.png" />
                    <p>Tired of finding items in the default lookup?</p>
                    <p>This component overlays your lookup (and lookup-multi) fields and makes them more user friendly.
                        <b>No need</b> to change your fields/columns, everything is left untouched from SharePoint aspect.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span6">
                <h3>Enhanced Lookup</h3>
                <dl class="dl-horizontal">
                    <dt>Scope</dt>
                    <dd>Site collection</dd>
                    <dt>Online</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                    <dt>Foundation</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                    <dt>Standard</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                    <dt>Enterprise</dt>
                    <dd><span class="label label-success">Supported</span></dd>
                </dl>
                <p><a href="#" class="btn btn-large btn-success">Buy pre-built WSP</a></p>
            </div>
        </div>
    </section>
</asp:Content>