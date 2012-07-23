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
                        <div class="caption"><h1>Essentials</h1></div>
                        <a class="thumbnail" href="#essentials">
                            <img src="img/essentials.png" alt="Essentials">
                            <div class="badge">
                                <div class="twelve-point-star"></div>
                                <label>Free!</label>
                            </div>
                        </a>
                    </li>
                    <li class="span4">
                        <div class="caption"><h1>Enhanced lookup</h1></div>
                        <a class="thumbnail" href="#enhancedlookup">
                            <img src="img/enhancedlookup3.png" alt="Enhanced Lookup">
                            <div class="badge">
                                <div class="twelve-point-star"></div>
                                <label>$299</label>
                            </div>
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
                    <li><a href="http://underscorejs.org" target="_blank">underscore.js</a></li>
                </ul>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="span3">
                <div class="well">
                    <h3 class="light">Essentials</h3>
                    <dl class="dl-horizontal">
                        <dt>Version</dt>
                        <dd>1.0.2</dd>
                        <dt>Scope</dt>
                        <dd>Site collection</dd>
                        <dt>Sandboxed</dt>
                        <dd><span class="label label-success">Yes</span></dd>
                        <dt>Online</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                        <dt>Foundation</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                        <dt>Standard</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                        <dt>Enterprise</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                    </dl>
                </div>
            </div>
            <div class="span3">
                <a class="btn btn-large" href="wsp/Essentials-1.0.2.wsp"><i class="download"></i>Download</a>
            </div>
        </div>
        <div class="row">
            <div class="span10">
                <button class="btn btn-info btn-small" data-toggle="collapse" data-target="#essentials-fordevs">
                    <i class="icon-chevron-down"></i>
                    For Developers
                </button>
 
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
                    <p>Tired of not finding items in the default lookup?</p>
                    <p>This component overlays your lookup (and lookup-multi) fields and makes them more user friendly.
                        <b>No need</b> to change your fields/columns, everything is left untouched from SharePoint point of view.</p>
                </div>
            </div>
        </div>
        <h2>Live demo</h2>
        <div class="row">
            <div class="span3">
                <p>Enhanced lookup turns this (image):</p>
            </div>
            <div class="span6 well">
                <img src="img/lookup.png" />
            </div>
        </div>
        <div class="row">
            <div class="span3">
                <p>Into this: <small>(try selecting the one ending with 'dust')</small></p>
            </div>
            <div id="demo" class="span6 well">
                <p> <select> </select> </p>
                <p> <select multiple="multiple"> </select> </p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="span3">
                <div class="well">
                    <h3 class="light">Enhanced lookup</h3>
                    <dl class="dl-horizontal">
                        <dt>Version</dt>
                        <dd>1.0.1</dd>
                        <dt>Scope</dt>
                        <dd>Site collection</dd>
                        <dt>Dependencies</dt>
                        <dd><a href="#essentials"><span class="label label-info">Essentials (free)</span></a></dd>
                        <dt>Sandboxed</dt>
                        <dd><span class="label label-success">Yes</span></dd>
                        <dt>Online</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                        <dt>Foundation</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                        <dt>Standard</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                        <dt>Enterprise</dt>
                        <dd><span class="label label-success">Supported</span></dd>
                    </dl>
                </div>
            </div>
            <div class="span6">
                <div class="well buy">
                    <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----
">
                        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
                    </form>
                    <h5>We will send you a a WSP-file you can install to your SharePoint Online (or foundation/standard/server)</h5>
                </div>
            </div>
            <div class="span2">
                <h5>Legal</h5>
                <p><a href="http://ivaynberg.github.com/select2/">Select2</a> is licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0">Apache Software Foundation License Version 2.0</a>. Coded by Igor Vaynberg.</p>
            </div>
        </div>
    </section>
</asp:Content>