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
                        <b>No need</b> to change your fields/columns, everything is left untouched from SharePoint point of view.</p>
                </div>
            </div>
        </div>
        <h2>Live demo</h2>
        <div class="row">
            <div class="span12">
                <p>Enhanced lookup turns this (image):</p>
                <img class="well" src="img/lookup.png" />
                <p>Into this: <small>(try selecting the one ending with 'dust')</small></p>
                <div id="demo" class="well">
                    <p>
                        <select>
                            <option value="0">(None)</option>
                            <option value="11">4-Speed/Trucker</option>
                            <option value="8">Ace</option>
                            <option value="6">Amberlocks</option>
                            <option value="240">Angel</option>
                            <option value="9">Apple Bloom</option>
                            <option value="7">Apple Spice</option>
                            <option value="10">Applejack</option>
                            <option value="137">Baby Bouncy</option>
                            <option value="12">Baby Cuddles</option>
                            <option value="13">Baby Fifi</option>
                            <option value="15">Baby Half-Note</option>
                            <option value="14">Baby Milkweed</option>
                            <option value="16">Baby Quackers</option>
                            <option value="17">Baby Sniffles</option>
                            <option value="18">Baby Snookums</option>
                            <option value="19">Baby Tic-Tac-Toe</option>
                            <option value="20">Baby
                                Tumbleweed</option>
                            <option value="221">Backstroke/Baby Backstroke</option>
                            <option value="222">Beachcomber</option>
                            <option value="21">Big Macintosh</option>
                            <option value="136">Blossomforth</option>
                            <option value="22">Bon Bon</option>
                            <option value="23">Bow Tie</option>
                            <option value="24">Braeburn</option>
                            <option value="25">Bright Eyes</option>
                            <option value="135">Brightglow</option>
                            <option value="173">Brights Brightly</option>
                            <option value="26">Bubbles</option>
                            <option value="27">Bumblesweet/
                                Honeybuzz</option>
                            <option value="172">Buttons/Baby Buttons</option>
                            <option value="241">Captain Crabnasty</option>
                            <option value="29">Caramel</option>
                            <option value="54">Carrot Top</option>
                            <option value="28">Cheerilee</option>
                            <option value="30">Cherries Jubilee/Cherry Jubilee</option>
                            <option value="31">Cheval</option>
                            <option value="242">Chief Thunderhooves</option>
                            <option value="32">Clever Clover
                                /Clover the Clever</option>
                            <option value="138">Cloud Climber</option>
                            <option value="34">Clover</option>
                            <option value="33">Clover Bloom</option>
                            <option value="35">Coconut Cream</option>
                            <option value="139">Coconut Grove</option>
                            <option value="37">Cotton Candy/Baby Cotton Candy</option>
                            <option value="243">Cranky Doodle Donkey</option>
                            <option value="36">Cupcake/
                                Sugarcup</option>
                            <option value="39">Daffidazey</option>
                            <option value="48">Daisy</option>
                            <option value="38">Daisyjo</option>
                            <option value="238">Danny Williams</option>
                            <option value="140">Daring-Do</option>
                            <option value="208">Dazzleglow</option>
                            <option value="141">Derpy</option>
                            <option value="40">Desert Rose</option>
                            <option value="43">Diamond Tiara</option>
                            <option value="175">DJ P0n-3</option>
                            <option value="174">DJ P0n-3/Vinyl Scratch</option>
                            <option value="244">Drog</option>
                            <option value="245">Drudge</option>
                            <option value="41">Ember</option>
                            <option value="176">Fancy Pants</option>
                            <option value="142">Featherweight</option>
                            <option value="42">Fiesta Flair</option>
                            <option value="44">Filthy Rich</option>
                            <option value="143">Firefly</option>
                            <option value="177">Fizzy</option>
                            <option value="45">Fizzy Pop</option>
                            <option value="178">Flam</option>
                            <option value="179">Flim</option>
                            <option value="46">Flitter Flutter</option>
                            <option value="47">Flower Wishes/Daisy</option>
                            <option value="144">Fluttershy</option>
                            <option value="215">Forget-Me-Not</option>
                            <option value="50">Forsythia</option>
                            <option value="180">Galaxy</option>
                            <option value="212">Garble</option>
                            <option value="49">Gem Blossom</option>
                            <option value="51">Gingerbread</option>
                            <option value="53">Glitter Glide</option>
                            <option value="181">Glory/Baby Glory</option>
                            <option value="247">G'nash</option>
                            <option value="52">Golden Harvest/
                                Carrot Top</option>
                            <option value="55">Granny Smith</option>
                            <option value="246">Grundles</option>
                            <option value="248">Gummy</option>
                            <option value="249">Gustave LeGrand</option>
                            <option value="182">Gusty/Baby Gusty</option>
                            <option value="250">Habbit</option>
                            <option value="57">Half-Note</option>
                            <option value="145">Happyglow</option>
                            <option value="56">Heart Bright</option>
                            <option value="146">Heart Throb/Baby Heart Throb</option>
                            <option value="61">Hoity-Toity</option>
                            <option value="216">Honeysuckle</option>
                            <option value="147">Honolu-Loo</option>
                            <option value="148">Island Delight</option>
                            <option value="183">Joe</option>
                            <option value="59">Junebug</option>
                            <option value="58">Kimono</option>
                            <option value="251">King Hugo</option>
                            <option value="60">Knight Shade</option>
                            <option value="253">Kyrie</option>
                            <option value="63">Lancer</option>
                            <option value="184">Lemon Hearts</option>
                            <option value="62">Lickety-Split/Baby Lickety-Split</option>
                            <option value="64">Light Heart</option>
                            <option value="217">Lily</option>
                            <option value="185">Lily Lightly</option>
                            <option value="254">Little Strongheart</option>
                            <option value="149">Locket</option>
                            <option value="151">Lofty</option>
                            <option value="65">Loop-De-La</option>
                            <option value="186">Lyra Heartstrings</option>
                            <option value="69">Magic Marigold</option>
                            <option value="68">Magic Star</option>
                            <option value="187">Majesty</option>
                            <option value="150">Masquerade</option>
                            <option value="255">Matilda</option>
                            <option value="70">Mayor Mare</option>
                            <option value="67">Meadowlark</option>
                            <option value="66">Meadowlark Bloom</option>
                            <option value="152">Medley</option>
                            <option value="237">Megan Williams</option>
                            <option value="72">Melody</option>
                            <option value="71">Merriweather</option>
                            <option value="188">Mimic</option>
                            <option value="73">Minty</option>
                            <option value="189">Minuette</option>
                            <option value="74">Miss Hackney</option>
                            <option value="239">Molly Williams</option>
                            <option value="190">Moondancer/Baby Moondancer</option>
                            <option value="218">Morning Glory</option>
                            <option value="75">Mother Pie</option>
                            <option value="76">Mr. (Carrot) and Mrs. (Cup) Cake</option>
                            <option value="153">North Star/Baby North Star</option>
                            <option value="77">Octavia</option>
                            <option value="154">Paradise</option>
                            <option value="78">Patch</option>
                            <option value="219">Peach Blossom</option>
                            <option value="79">Peachy Pie</option>
                            <option value="80">Photo Finish</option>
                            <option value="81">Piccolo</option>
                            <option value="82">Pick-a-Lilly</option>
                            <option value="83">Pinkie Pie</option>
                            <option value="86">Pip</option>
                            <option value="85">Pipsqueak/Pip</option>
                            <option value="84">Posey</option>
                            <option value="155">Pound Cake</option>
                            <option value="191">Powder</option>
                            <option value="87">Pretty Beat</option>
                            <option value="192">Prince Blueblood</option>
                            <option value="210">Princess Celestia</option>
                            <option value="209">Princess Luna/Nightmare Moon</option>
                            <option value="211">Princess Mi Amore Cadenza/Princess Cadance</option>
                            <option value="90">Princess Primrose</option>
                            <option value="89">Princess Royal Blue</option>
                            <option value="88">Princess Serena</option>
                            <option value="193">Princess Sparkle</option>
                            <option value="92">Princess Starburst</option>
                            <option value="156">Princess Tiffany</option>
                            <option value="194">Pumpkin Cake</option>
                            <option value="91">Puzzlemint</option>
                            <option value="94">Quarterback/Score</option>
                            <option value="157">Rainbow Dash</option>
                            <option value="196">Rarity</option>
                            <option value="93">Razzaroo</option>
                            <option value="195">Ribbon/Baby Ribbon</option>
                            <option value="223">Ripple</option>
                            <option value="95">Rose/Roseluck</option>
                            <option value="220">Rosedust</option>
                            <option value="96">Roseluck</option>
                            <option value="158">Royal Pegasus Guards</option>
                            <option value="97">Salty/Tug</option>
                            <option value="224">Sand Dollar</option>
                            <option value="98">Sapphire Shores</option>
                            <option value="100">Scoops</option>
                            <option value="159">Scootaloo</option>
                            <option value="101">Scooter Sprite</option>
                            <option value="226">Sea Mist</option>
                            <option value="227">Sea Shimmer</option>
                            <option value="225">Sealight</option>
                            <option value="99">Seaspray</option>
                            <option value="228">Seawinkle</option>
                            <option value="102">Sew-and-So</option>
                            <option value="103">Shady/Baby Shady</option>
                            <option value="197">Shining Armor</option>
                            <option value="104">Silver Spoon</option>
                            <option value="160">Skydancer</option>
                            <option value="105">Skywishes</option>
                            <option value="106">Slugger/
                                First Base</option>
                            <option value="198">Snails</option>
                            <option value="199">Snips</option>
                            <option value="161">Soarin'</option>
                            <option value="162">Soren</option>
                            <option value="200">Sparkler</option>
                            <option value="107">Sparkleworks</option>
                            <option value="213">Spike</option>
                            <option value="163">Spitfire</option>
                            <option value="164">Star Catcher</option>
                            <option value="109">Star Flight</option>
                            <option value="112">Star Swirl the Bearded</option>
                            <option value="111">Star Swirl/Star Swirl the Bearded</option>
                            <option value="108">Starbeam</option>
                            <option value="202">Starflower</option>
                            <option value="165">Starglow</option>
                            <option value="110">Starlight</option>
                            <option value="166">Starsong</option>
                            <option value="113">Steamer/Tracks</option>
                            <option value="115">Storybelle</option>
                            <option value="231">Sun Shower</option>
                            <option value="114">Sundance/Baby Sundance</option>
                            <option value="116">Sunny Daze/
                                Sunny Days</option>
                            <option value="229">Surf Rider</option>
                            <option value="168">Surprise/Baby Surprise</option>
                            <option value="117">Sweet Berry/
                                Sweetberry</option>
                            <option value="119">Sweet Notes</option>
                            <option value="120">Sweet Stuff</option>
                            <option value="118">Sweetheart</option>
                            <option value="201">Sweetie Belle</option>
                            <option value="121">Teddy</option>
                            <option value="126">Teddy Tales</option>
                            <option value="122">Tex</option>
                            <option value="252">The Grundle King</option>
                            <option value="167">Thistle Whistle</option>
                            <option value="234">Tiddly Wink</option>
                            <option value="125">Time Turner/Dr. Hooves</option>
                            <option value="124">Tink-a-Tink-a-Too</option>
                            <option value="123">Toola-Roola</option>
                            <option value="235">Tra La La</option>
                            <option value="127">Triple Treat</option>
                            <option value="204">Trixie Lulamoon</option>
                            <option value="128">Truly</option>
                            <option value="129">Tuneful</option>
                            <option value="203">Twilight</option>
                            <option value="169">Twilight (Pegasus)</option>
                            <option value="205">Twilight Sparkle</option>
                            <option value="130">Twinkle Twirl</option>
                            <option value="206">Twinkleshine</option>
                            <option value="132">Twist</option>
                            <option value="131">Valenshy</option>
                            <option value="232">Water Lily</option>
                            <option value="134">Waterfire</option>
                            <option value="230">Wavedancer</option>
                            <option value="214">Whimsey Weatherbe</option>
                            <option value="207">Whistle Wishes</option>
                            <option value="233">Whitecap</option>
                            <option value="170">Whizzer</option>
                            <option value="171">Wind Whistler</option>
                            <option value="133">Wysteria</option>
                            <option value="236">Zipzee</option>
                        </select>
                    </p>
                    <p>
                        <select multiple="multiple">
                            <option value="0">(None)</option>
                            <option value="11">4-Speed/Trucker</option>
                            <option value="8">Ace</option>
                            <option value="6">Amberlocks</option>
                            <option value="240">Angel</option>
                            <option value="9">Apple Bloom</option>
                            <option value="7">Apple Spice</option>
                            <option value="10">Applejack</option>
                            <option value="137">Baby Bouncy</option>
                            <option value="12">Baby Cuddles</option>
                            <option value="13">Baby Fifi</option>
                            <option value="15">Baby Half-Note</option>
                            <option value="14">Baby Milkweed</option>
                            <option value="16">Baby Quackers</option>
                            <option value="17">Baby Sniffles</option>
                            <option value="18">Baby Snookums</option>
                            <option value="19">Baby Tic-Tac-Toe</option>
                            <option value="20">Baby
                                Tumbleweed</option>
                            <option value="221">Backstroke/Baby Backstroke</option>
                            <option value="222">Beachcomber</option>
                            <option value="21">Big Macintosh</option>
                            <option value="136">Blossomforth</option>
                            <option value="22">Bon Bon</option>
                            <option value="23">Bow Tie</option>
                            <option value="24">Braeburn</option>
                            <option value="25">Bright Eyes</option>
                            <option value="135">Brightglow</option>
                            <option value="173">Brights Brightly</option>
                            <option value="26">Bubbles</option>
                            <option value="27">Bumblesweet/
                                Honeybuzz</option>
                            <option value="172">Buttons/Baby Buttons</option>
                            <option value="241">Captain Crabnasty</option>
                            <option value="29">Caramel</option>
                            <option value="54">Carrot Top</option>
                            <option value="28">Cheerilee</option>
                            <option value="30">Cherries Jubilee/Cherry Jubilee</option>
                            <option value="31">Cheval</option>
                            <option value="242">Chief Thunderhooves</option>
                            <option value="32">Clever Clover
                                /Clover the Clever</option>
                            <option value="138">Cloud Climber</option>
                            <option value="34">Clover</option>
                            <option value="33">Clover Bloom</option>
                            <option value="35">Coconut Cream</option>
                            <option value="139">Coconut Grove</option>
                            <option value="37">Cotton Candy/Baby Cotton Candy</option>
                            <option value="243">Cranky Doodle Donkey</option>
                            <option value="36">Cupcake/
                                Sugarcup</option>
                            <option value="39">Daffidazey</option>
                            <option value="48">Daisy</option>
                            <option value="38">Daisyjo</option>
                            <option value="238">Danny Williams</option>
                            <option value="140">Daring-Do</option>
                            <option value="208">Dazzleglow</option>
                            <option value="141">Derpy</option>
                            <option value="40">Desert Rose</option>
                            <option value="43">Diamond Tiara</option>
                            <option value="175">DJ P0n-3</option>
                            <option value="174">DJ P0n-3/Vinyl Scratch</option>
                            <option value="244">Drog</option>
                            <option value="245">Drudge</option>
                            <option value="41">Ember</option>
                            <option value="176">Fancy Pants</option>
                            <option value="142">Featherweight</option>
                            <option value="42">Fiesta Flair</option>
                            <option value="44">Filthy Rich</option>
                            <option value="143">Firefly</option>
                            <option value="177">Fizzy</option>
                            <option value="45">Fizzy Pop</option>
                            <option value="178">Flam</option>
                            <option value="179">Flim</option>
                            <option value="46">Flitter Flutter</option>
                            <option value="47">Flower Wishes/Daisy</option>
                            <option value="144">Fluttershy</option>
                            <option value="215">Forget-Me-Not</option>
                            <option value="50">Forsythia</option>
                            <option value="180">Galaxy</option>
                            <option value="212">Garble</option>
                            <option value="49">Gem Blossom</option>
                            <option value="51">Gingerbread</option>
                            <option value="53">Glitter Glide</option>
                            <option value="181">Glory/Baby Glory</option>
                            <option value="247">G'nash</option>
                            <option value="52">Golden Harvest/
                                Carrot Top</option>
                            <option value="55">Granny Smith</option>
                            <option value="246">Grundles</option>
                            <option value="248">Gummy</option>
                            <option value="249">Gustave LeGrand</option>
                            <option value="182">Gusty/Baby Gusty</option>
                            <option value="250">Habbit</option>
                            <option value="57">Half-Note</option>
                            <option value="145">Happyglow</option>
                            <option value="56">Heart Bright</option>
                            <option value="146">Heart Throb/Baby Heart Throb</option>
                            <option value="61">Hoity-Toity</option>
                            <option value="216">Honeysuckle</option>
                            <option value="147">Honolu-Loo</option>
                            <option value="148">Island Delight</option>
                            <option value="183">Joe</option>
                            <option value="59">Junebug</option>
                            <option value="58">Kimono</option>
                            <option value="251">King Hugo</option>
                            <option value="60">Knight Shade</option>
                            <option value="253">Kyrie</option>
                            <option value="63">Lancer</option>
                            <option value="184">Lemon Hearts</option>
                            <option value="62">Lickety-Split/Baby Lickety-Split</option>
                            <option value="64">Light Heart</option>
                            <option value="217">Lily</option>
                            <option value="185">Lily Lightly</option>
                            <option value="254">Little Strongheart</option>
                            <option value="149">Locket</option>
                            <option value="151">Lofty</option>
                            <option value="65">Loop-De-La</option>
                            <option value="186">Lyra Heartstrings</option>
                            <option value="69">Magic Marigold</option>
                            <option value="68">Magic Star</option>
                            <option value="187">Majesty</option>
                            <option value="150">Masquerade</option>
                            <option value="255">Matilda</option>
                            <option value="70">Mayor Mare</option>
                            <option value="67">Meadowlark</option>
                            <option value="66">Meadowlark Bloom</option>
                            <option value="152">Medley</option>
                            <option value="237">Megan Williams</option>
                            <option value="72">Melody</option>
                            <option value="71">Merriweather</option>
                            <option value="188">Mimic</option>
                            <option value="73">Minty</option>
                            <option value="189">Minuette</option>
                            <option value="74">Miss Hackney</option>
                            <option value="239">Molly Williams</option>
                            <option value="190">Moondancer/Baby Moondancer</option>
                            <option value="218">Morning Glory</option>
                            <option value="75">Mother Pie</option>
                            <option value="76">Mr. (Carrot) and Mrs. (Cup) Cake</option>
                            <option value="153">North Star/Baby North Star</option>
                            <option value="77">Octavia</option>
                            <option value="154">Paradise</option>
                            <option value="78">Patch</option>
                            <option value="219">Peach Blossom</option>
                            <option value="79">Peachy Pie</option>
                            <option value="80">Photo Finish</option>
                            <option value="81">Piccolo</option>
                            <option value="82">Pick-a-Lilly</option>
                            <option value="83">Pinkie Pie</option>
                            <option value="86">Pip</option>
                            <option value="85">Pipsqueak/Pip</option>
                            <option value="84">Posey</option>
                            <option value="155">Pound Cake</option>
                            <option value="191">Powder</option>
                            <option value="87">Pretty Beat</option>
                            <option value="192">Prince Blueblood</option>
                            <option value="210">Princess Celestia</option>
                            <option value="209">Princess Luna/Nightmare Moon</option>
                            <option value="211">Princess Mi Amore Cadenza/Princess Cadance</option>
                            <option value="90">Princess Primrose</option>
                            <option value="89">Princess Royal Blue</option>
                            <option value="88">Princess Serena</option>
                            <option value="193">Princess Sparkle</option>
                            <option value="92">Princess Starburst</option>
                            <option value="156">Princess Tiffany</option>
                            <option value="194">Pumpkin Cake</option>
                            <option value="91">Puzzlemint</option>
                            <option value="94">Quarterback/Score</option>
                            <option value="157">Rainbow Dash</option>
                            <option value="196">Rarity</option>
                            <option value="93">Razzaroo</option>
                            <option value="195">Ribbon/Baby Ribbon</option>
                            <option value="223">Ripple</option>
                            <option value="95">Rose/Roseluck</option>
                            <option value="220">Rosedust</option>
                            <option value="96">Roseluck</option>
                            <option value="158">Royal Pegasus Guards</option>
                            <option value="97">Salty/Tug</option>
                            <option value="224">Sand Dollar</option>
                            <option value="98">Sapphire Shores</option>
                            <option value="100">Scoops</option>
                            <option value="159">Scootaloo</option>
                            <option value="101">Scooter Sprite</option>
                            <option value="226">Sea Mist</option>
                            <option value="227">Sea Shimmer</option>
                            <option value="225">Sealight</option>
                            <option value="99">Seaspray</option>
                            <option value="228">Seawinkle</option>
                            <option value="102">Sew-and-So</option>
                            <option value="103">Shady/Baby Shady</option>
                            <option value="197">Shining Armor</option>
                            <option value="104">Silver Spoon</option>
                            <option value="160">Skydancer</option>
                            <option value="105">Skywishes</option>
                            <option value="106">Slugger/
                                First Base</option>
                            <option value="198">Snails</option>
                            <option value="199">Snips</option>
                            <option value="161">Soarin'</option>
                            <option value="162">Soren</option>
                            <option value="200">Sparkler</option>
                            <option value="107">Sparkleworks</option>
                            <option value="213">Spike</option>
                            <option value="163">Spitfire</option>
                            <option value="164">Star Catcher</option>
                            <option value="109">Star Flight</option>
                            <option value="112">Star Swirl the Bearded</option>
                            <option value="111">Star Swirl/Star Swirl the Bearded</option>
                            <option value="108">Starbeam</option>
                            <option value="202">Starflower</option>
                            <option value="165">Starglow</option>
                            <option value="110">Starlight</option>
                            <option value="166">Starsong</option>
                            <option value="113">Steamer/Tracks</option>
                            <option value="115">Storybelle</option>
                            <option value="231">Sun Shower</option>
                            <option value="114">Sundance/Baby Sundance</option>
                            <option value="116">Sunny Daze/
                                Sunny Days</option>
                            <option value="229">Surf Rider</option>
                            <option value="168">Surprise/Baby Surprise</option>
                            <option value="117">Sweet Berry/
                                Sweetberry</option>
                            <option value="119">Sweet Notes</option>
                            <option value="120">Sweet Stuff</option>
                            <option value="118">Sweetheart</option>
                            <option value="201">Sweetie Belle</option>
                            <option value="121">Teddy</option>
                            <option value="126">Teddy Tales</option>
                            <option value="122">Tex</option>
                            <option value="252">The Grundle King</option>
                            <option value="167">Thistle Whistle</option>
                            <option value="234">Tiddly Wink</option>
                            <option value="125">Time Turner/Dr. Hooves</option>
                            <option value="124">Tink-a-Tink-a-Too</option>
                            <option value="123">Toola-Roola</option>
                            <option value="235">Tra La La</option>
                            <option value="127">Triple Treat</option>
                            <option value="204">Trixie Lulamoon</option>
                            <option value="128">Truly</option>
                            <option value="129">Tuneful</option>
                            <option value="203">Twilight</option>
                            <option value="169">Twilight (Pegasus)</option>
                            <option value="205">Twilight Sparkle</option>
                            <option value="130">Twinkle Twirl</option>
                            <option value="206">Twinkleshine</option>
                            <option value="132">Twist</option>
                            <option value="131">Valenshy</option>
                            <option value="232">Water Lily</option>
                            <option value="134">Waterfire</option>
                            <option value="230">Wavedancer</option>
                            <option value="214">Whimsey Weatherbe</option>
                            <option value="207">Whistle Wishes</option>
                            <option value="233">Whitecap</option>
                            <option value="170">Whizzer</option>
                            <option value="171">Wind Whistler</option>
                            <option value="133">Wysteria</option>
                            <option value="236">Zipzee</option>
                        </select>
                    </p>
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
                <p>
                    <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----
">
                        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
                    </form>
                    <h5>We will send you a a WSP-file which you can install to your SharePoint Online (or foundation/standard/server)</h5>
                </p>
            </div>
        </div>
    </section>
</asp:Content>