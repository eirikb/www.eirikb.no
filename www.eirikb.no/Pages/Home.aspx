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
    <section>
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
                        <div class="caption"><h3>Enhanced Lookup</h3></div>
                        <a class="thumbnail" href="#enhancedlookup">
                            <img src="dump/img/enhancedlookup.png" alt="Enhanced Lookup">
                        </a>
                    </li>
                    <li class="span3">
                        <div class="caption"><h3>JSONList</h3></div>
                        <a class="thumbnail" href="#jsonlist">
                            <img src="dump/img/jsonlist.png" alt="JSONList">
                        </a>
                    </li>
                    <li class="span3">
                        <div class="caption"><h3>Extreme SharePoint</h3></div>
                        <a class="thumbnail" href="#extreme-sharepoint">
                            <img src="dump/img/extreme-sharepoint.png" alt="Extreme SharePoint">
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
            <h1>Enhanced Lookup</h1>
        </div>
        <div class="row">
            <div class="span8">
                <div class="hero-unit">
                    <img src="dump/img/enhancedlookup1.png" />
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
                <p>Enhanced Lookup turns this (image):</p>
            </div>
            <div class="span6 well">
                <img src="dump/img/lookup.png" />
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
            <div class="span4">
                <div class="well">
                    <h3 class="light">Enhanced Lookup</h3>
                    <dl class="dl-horizontal">
                        <dt>Version</dt>
                        <dd>1.0.6</dd>
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
            <div class="span2">
                <a class="btn btn-large" href="dump/wsp/EnhancedLookup-1.0.6.wsp"><i class="download"></i>Download</a>
            </div>
            <div class="span2">
                <a class="btn btn-large" href="https://github.com/eirikb/enhancedlookup"><i class="download github"></i>Source</a>
            </div>
            <div class="span2">
                <h5>Legal</h5>
                <p><a href="http://ivaynberg.github.com/select2/">Select2</a> is licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0">Apache Software Foundation License Version 2.0</a>. Coded by Igor Vaynberg.</p>
            </div>
        </div>
    </section>

    <section id="jsonlist">
        <div class="page-header">
            <h1>JSONList</h1>
        </div>
        <div class="row">
            <div class="span12">
                <p>
                    Export and Import data from and to lists.
                    The program will only download the data, so views and such are ignored. The point of the application is:
                    <ol>
                        <li>Create a <b>SPWeb</b> including the list definitions and list instances required.</li>
                        <li>Create all the data needed as usual.</li>
                        <li>Run <b>JSONList.exe</b> to export all data.</li>
                        <li>Do development, re-create the SPWeb (step 1).</li>
                        <li>Run <b>JSONList.exe</b> to import all data.</li>
                    </ol>
                </p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="span4">
                <div class="well">
                    <h3 class="light">JSONList</h3>
                    <dl class="dl-horizontal">
                        <dt>Version</dt>
                        <dd>1.0.0.0</dd>
                        <dt>Type</dt>
                        <dd>Stand alone exe</dd>
                    </dl>
                </div>
            </div>
            <div class="span2">
                <a class="btn btn-large" href="dump/exe/JSONList.txt"><i class="download"></i>Download (rename to exe)</a>
            </div>
            <div class="span2">
                <a class="btn btn-large" href="https://github.com/eirikb/jsonlist"><i class="download github"></i>Source</a>
            </div>
        </div>
    </section>

    <section id="extreme-sharepoint">
        <div class="page-header">
            <h1>Extreme SharePoint</h1>
        </div>
        <div class="row">
            <div class="span12">
                <p>
                </p>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="span4">
                <div class="well">
                    <h3 class="light">Extreme SharePoint</h3>
                    <dl class="dl-horizontal">
                        <dt>Version</dt>
                        <dd>1.0.0.0</dd>
                        <dt>Type</dt>
                        <dd>DLL</dd>
                    </dl>
                </div>
            </div>
            <div class="span2">
                <a class="btn btn-large" href="dump/dll/extreme-sharepoint.dll"><i class="download"></i>Download (rename to DLL)</a>
            </div>
            <div class="span2">
                <a class="btn btn-large" href="https://github.com/eirikb/extreme-sharepoint"><i class="download github"></i>Source</a>
            </div>
        </div>
    </section>
        </div>
</asp:Content>