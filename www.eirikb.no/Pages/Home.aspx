<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Page masterpagefile="~site/_catalogs/masterpage/bootstrap.master" title="www.eirikb.no" %>

<asp:Content ID="About" runat="server" ContentPlaceHolderID="PlaceHolderAbout">
        <!--
                                                             __      __
                                               __         __/\ \    /\ \                         
 __  __  __  __  __  __  __  __  __        __ /\_\  _ __ /\_\ \ \/'\\ \ \____      ___     ___   
/\ \/\ \/\ \/\ \/\ \/\ \/\ \/\ \/\ \     /'__`\/\ \/\`'__\/\ \ \ , < \ \ '__`\   /' _ `\  / __`\ 
\ \ \_/ \_/ \ \ \_/ \_/ \ \ \_/ \_/ \ __/\  __/\ \ \ \ \/ \ \ \ \ \\`\\ \ \L\ \__/\ \/\ \/\ \L\ \
 \ \___x___/'\ \___x___/'\ \___x___/'/\_\ \____\\ \_\ \_\  \ \_\ \_\ \_\ \_,__/\_\ \_\ \_\ \____/
  \/__//__/   \/__//__/   \/__//__/  \/_/\/____/ \/_/\/_/   \/_/\/_/\/_/\/___/\/_/\/_/\/_/\/___/ 

        by eirikb <eirikb@eirikb.no>
        hosted on SharePoint Online
        -->
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderPageTitle">www.eirikb.no - SharePoint 2010, SharePoint 2013</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderAdditionalStyles">
        <link rel="stylesheet" href="dump/css/style.css" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderAdditionalScripts">
        <script src="dump/js/script.js"> </script>
        <script>
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-33400470-1']);
            _gaq.push(['_trackPageview']);
            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();
        </script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="PlaceHolderMain">
    <div class="container">
        <header class="jumbotron subhead">
            <div class="container">
                <h1>www.eirikb.no</h1>
                <p class="lead">SharePoint Stuff</p>
            </div>
        </header>
    <section id="sale">
        <div class="page-header">
            <h1>Solutions<small>Components, Web Parts and tools for SharePoint</small></h1>
        </div>
        <div class="row">
            <div class="span12">
                <ul class="thumbnails">
                    <li class="span3">
                        <div class="caption"><h3>SPPreload</h3></div>
                        <a class="thumbnail" href="#sppreload">
                            <img src="dump/img/sppreload.png" alt="SPPreload">
                        </a>
                    </li>
                    <li class="span3">
                        <div class="caption"><h3>Enhanced lookup</h3></div>
                        <a class="thumbnail" href="#enhancedlookup">
                            <img src="dump/img/enhancedlookup.png" alt="Enhanced Lookup">
                        </a>
                    </li>
                    <li class="span3">
                        <div class="caption"><h3>Extreme SharePoint</h3></div>
                        <a class="thumbnail" href="#extreme-sharepoint">
                            <img src="dump/img/extreme-sharepoint.png" alt="Extreme SharePoint">
                        </a>
                    </li>
                    <li class="span3">
                        <div class="caption"><h3>JSONList</h3></div>
                        <a class="thumbnail" href="#jsonlist">
                            <img src="dump/img/jsonlist.png" alt="JSONList">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <section id="sppreload">
        <div class="page-header">
            <h1>SPPreload</h1>
        </div>
        <div class="row">
            <div class="span12">
                <p>This solution let developers reference JavaScript and CSS.</p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="span4">
                <div class="well">
                    <h3 class="light">SPPreload</h3>
                    <dl class="dl-horizontal">
                        <dt>Version</dt>
                        <dd>1.0.5</dd>
                        <dt>Scope</dt>
                        <dd>Site collection</dd>
                        <dt>Sandboxed</dt>
                        <dd><span class="label label-success">Yes</span></dd>
                        <dt>2013</dt>
                        <dd><span class="label label-success">Supported</span></dd>
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
            <div class="span2">
                <a class="btn btn-large" href="dump/wsp/SPPreload-1.0.5.wsp"><i class="download"></i>Download</a>
            </div>
            <div class="span2">
                <a class="btn btn-large" href="https://github.com/eirikb/sppreload"><i class="download github"></i>Source</a>
            </div>
        </div>
        <div class="row">
            <div class="span10">
                <button class="btn btn-info btn-small" data-toggle="collapse" data-target="#sppreload-fordevs">
                    <i class="icon-chevron-down"></i>
                    For Developers
                </button>
 
                <div id="sppreload-fordevs" class="collapse">
                    <p>
                        There are two main functions, <b>loadjs</b> and <b>loadcss</b>.
                        Both functions should be called from within a module (Elements.xml), or at least inlined directly in the markup.
                        
                        <b>loadjs</b> support these arguments:
                        <ul>
                            <li><b>loadjs(scriptUrl)</b></li>
                            <li><b>loadjs(scriptName, scriptUrl)</b></li>
                            <li><b>loadjs([dependencies], scriptUrl)</b></li>
                            <li><b>loadjs([dependencies], scriptName, scriptUrl)</b></li>
                        </ul>
                    </p>
                    <p>
                        Example module (From <a href="https://github.com/eirikb/enhancedlookup/blob/master/Assets/Elements.xml">EnhancedLookup</a>)
                    </p>
                    <pre class="prettyprint linenums">
﻿&lt;?xml version="1.0" encoding="utf-8"?>

&lt;Elements xmlns="http://schemas.microsoft.com/sharepoint/"&gt;
  &lt;CustomAction Location="ScriptLink" Sequence="1102" 
    ScriptBlock="loadcss('http://ivaynberg.github.com/select2/select2-3.2/select2.css');" /&gt;

  &lt;CustomAction Location="ScriptLink" Sequence="1101"
    ScriptBlock="loadjs('jquery', '//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js');" /&gt;
  &lt;CustomAction Location="ScriptLink" Sequence="1101"
    ScriptBlock="loadjs(['jquery'], 'select2', 'http://ivaynberg.github.com/select2/select2-3.2/select2.min.js');" /&gt;
  &lt;CustomAction Location="ScriptLink" Sequence="1103"
    ScriptBlock="loadjs(['jquery', 'select2'], '/eirikb/js/enhancedlookup.js');" /&gt;
&lt;Elements&gt;
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
                    <h5>Features</h5>
                    <ul>
                        <li>Instantly added to all lists in a site collection</li>
                        <li>Any site collection administrator can install it through solution gallery</li>
                        <li>Can be enabled/disabled through a feature without affecting anything in SharePoint</li>
                        <li>Works on every version of SharePoint 2010, SharePoint 2013 and SharePoint Online</li>
                    </ul>
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
                        <dd><a href="#sppreload"><span class="label label-info">SPPreload</span></a></dd>
                        <dt>Sandboxed</dt>
                        <dd><span class="label label-success">Yes</span></dd>
                        <dt>2013</dt>
                        <dd><span class="label label-success">Supported</span></dd>
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
        </div>
</asp:Content>