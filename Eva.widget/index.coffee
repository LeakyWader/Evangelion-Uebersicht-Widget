# Version: 0.Xa
## If you do not want a transparent widget, please adjust the opacity setting under STYLE
## If you do not know how to write HTML/CSS, it is best for you to learn it first before
## attempting to customise the UI. Or you can contact me.
## Any advise or new idea is welcome. Do not hesitate to contact me, my email is: jetic@me.com
# Refreshing Frequency is set to once every 1000ms
refreshFrequency: 3000
# Information on cells
## Cells consists of three parts. A main body(nav), a top and a bottom(s and b). Cells are rotated
## 90 degrees to the current position. For special cells (Battery cell, iTunes cell), the toppings
## and bottoms are slightly different, for example s1, s2, b1, b2, these are modified to cover
## the gaps between the originally seperated cells. Almost all the elements in the cells are
## positioned manually, this is to ensure that the UI looks exactly the same on different
## environments. Übersicht is using the safari engine to render the widgets, therefore the UI under
## different versions of Safari could be different, if so please contact me and I'll fix this. There
## are also classes like a0, a1, a2, a3, a4, these act as collective cell controlls allowing me to
## change the output of all related cells when necessary. ai cells are initially hidden; a1 and a2
## are used to adjust the lines so that the cells won't crash into each other; a3 is the battery
## cell; a4 is the console output cell; ax hasn't been used. Contents in the cells can use the
## classes content of bigger text or contents for smaller text, although most of the time it might
## be better to adjust the font-size manually. It is obvious that some of the cells are hidden(ai),
## these can be easily modified to display new contents as you like. I will personally add more to
## this widget as well. Please look out for my updates and if you've done something amazing with
## your copy of this widget and want me to add, please contact me.
##
# You can change the size through adjusting the font-size under style. Default is 1px
style: """
    font-size: 1px
    top: -25em
    font-family: Futura
    text-transform: uppercase
    position:relative
    opacity: 0.5
    margin:0
    text-align:center
    text-decoration:none
    .left
        position: fixed
        bottom: -25em
        left:-100em
        width: 800em
        float:left
        vertical-align : bottom
    .right
        float:right
        margin-right:-60em
    .nav
        text-decoration: none
        transform:rotate(90deg)
        width:100em;height:58em
        background:rgba(10,10,10,1)
        display:inline-block
        position:relative
        line-height:58em
        color:#ffffff
        float:right
        margin-top:-5em
        margin-left:45em
        margin-right:45em
    .nav d
        width:0;height:0
        display:block
        overflow:hidden
        position:absolute
        border-left:0.4em dotted transparent
        border-right:0.4em dotted transparent
        border-bottom:0.8em solid rgba(256,256,256,1)
        bottom:3.33333em
        right: 2.93333em
    .nav u
        width:0;height:0
        display:block
        overflow:hidden
        position:absolute
        border-left:0.4em dotted transparent
        border-right:0.4em dotted transparent
        border-top:0.8em solid rgba(256,256,256,1)
        top:3.33333em
        right:2.93333em
    .nav o
        display:block
        overflow:hidden
        position:absolute
        border-right:2em solid rgba(256,256,256,1)
        border-left:2em solid rgba(256,256,256,1)
        padding-right:88em
        padding-top:52em
        left:4em
        top:3em
    .nav s
        margin-left:10em
        width:0;height:0
        display:block
        overflow:hidden
        position:absolute
        border-right:50em dotted transparent
        border-left:50em dotted transparent
        border-bottom:30em solid rgba(10,10,10,1)
        right:0em
        top:-30em
    .nav b
        margin-left:10em
        width:0;height:0
        display:block
        overflow:hidden
        position:absolute
        border-right:50em dotted transparent
        border-left:50em dotted transparent
        border-top:30em solid rgba(10,10,10,1)
        bottom:-30em
        right:0em
    .nav b1
        margin-left:10em
        width:0;height:0
        display:block
        overflow:hidden
        position:absolute
        border-right:0em dotted transparent
        border-left:100em dotted transparent
        border-top:60em solid rgba(10,10,10,1)
        bottom:-60em
        right:0em
    .nav b2
        margin-left:10em
        width:0;height:0
        display:block
        overflow:hidden
        position:absolute
        border-right:100em dotted transparent
        border-left:0em dotted transparent
        border-top:60em solid rgba(10,10,10,1)
        bottom:-60em
        right:0em
    .nav b3
        margin-left:10em
        width:100em
        height:0
        display:block
        position:absolute
        background-color: rgba(10,10,10,1)
        border-top:95em solid rgba(10,10,10,1)
        right:0em
        bottom:-95em
    .nav s1
        margin-left:10em
        width:0;height:0
        display:block
        overflow:hidden
        position:absolute
        border-right:0em dotted transparent
        border-left:100em dotted transparent
        border-bottom:60em solid rgba(10,10,10,1)
        right:0em
        top:-60em
    .nav s2
        margin-left:10em
        width:100em
        height:0
        display:block
        position:absolute
        background-color: rgba(10,10,10,1)
        border-bottom:95em solid rgba(10,10,10,1)
        right:0em
        top:-95em
    .a0, .a0 s, .a0 b
        @keyframes meow_BG_red { from { background-color:rgba(256,0,0,1); } to { background-color:rgba(128,0,0,1); }  }
        @keyframes meow_BS_red { from { border-bottom-color:rgba(256,0,0,1); } to { border-bottom-color:rgba(128,0,0,1); }  }
        @keyframes meow_BB_red { from { border-top-color:rgba(256,0,0,1); } to { border-top-color:rgba(128,0,0,1); }  }
        @keyframes meow_BG_ora { from { background-color:rgba(256,96,0,1); } to { background-color:rgba(128,48,0,1); }  }
        @keyframes meow_BS_ora { from { border-bottom-color:rgba(256,96,0,1); } to { border-bottom-color:rgba(128,48,0,1); }  }
        @keyframes meow_BB_ora { from { border-top-color:rgba(256,96,0,1); } to { border-top-color:rgba(128,48,0,1); }  }

    .a1
        margin-right:140em
    .ai
        visibility: hidden
    .a4
        background:rgba(0,0,0,0)
    .nav:hover a0 s
        border-top-color:rgba(128,128,128,1)
    .nav:hover a0 b
        border-top-color:rgba(128,128,128,1)
    .a4 s, .a4 s2, .a4 b, .a4 b1, .a4 b2, .a4 b3
        border-bottom-color:rgba(10,10,10,0)
        border-top-color:rgba(10,10,10,0)
        border-left-color:rgba(10,10,10,0)
        border-right-color:rgba(10,10,10,0)
        background-color:rgba(10,10,10,0)
    .ax
        height:200em
    .a1:hover, .a2:hover, .a3:hover
        background-color:rgba(128,128,128,1)
    .a1:hover s, .a2:hover s, .a3:hover s
        border-bottom-color:rgba(128,128,128,1)
    .a1:hover b, .a2:hover b, .a3:hover b
        border-top-color:rgba(128,128,128,1)
    .output
        padding: 5em 10em
        font-size: 30em
        font-weight: 100
        text-shadow: 0 0em 5em #000000
        background-color: rgba(0,0,0,0.2)
        border: 1em solid #fff
    .content
        transform:rotate(-90deg)
        font-style: Black
        z-index:99999
    .clock
        font-size: 30em
    .sal
        font-family: Songti SC
        font-style: Black
        font-size:40em
    .Wcontent
        transform:rotate(-90deg)
        font-style: Black
        font-size: 15em
        z-index:99999
        visibility:hidden
    .contentS
        transform:rotate(-90deg)
        font-style: Black
        z-index:99999
    .Bat
        font-weight: bold
        font-size: 15em
        text-transform: uppercase
    .id
        font-size:20em
        font-family:Futura
        font-style:normal
    .BatStatus
        font-weight: bold
        font-size: 20em
        text-transform: uppercase
    .Rotate
        transform:rotate(-90deg)
        width:200em
    .iTunesPre
        width:0;height:0
        position:relative
        border-right:11em dotted transparent
        border-left:11em dotted transparent
        border-top:20em solid rgba(256,256,256,1)
        right:-40em
        top:-10em
    .iTunesNext
        width:0;height:0
        position:relative
        border-right:11em dotted transparent
        border-left:11em dotted transparent
        border-bottom:20em solid rgba(256,256,256,1)
        right:-40em
        top:-260em
    .iTunesPause
        width:30em;height:8em
        position:relative
        border-top:8em solid rgba(256,256,256,1)
        border-bottom:8em solid rgba(256,256,256,1)
        right:-37em
        top:-100em
    .iTunesPlay
        width:0;height:0
        position:relative
        border-right:17em dotted transparent
        border-left:17em dotted transparent
        border-bottom:30em solid rgba(256,256,256,1)
        right:-35em
        top:-170em
    .iTunesPlay:active
        border-bottom-color: rgba(128,128,128,1)
    .iTunesPause:active
        border-top-color: rgba(128,128,128,1)
        border-bottom-color: rgba(128,128,128,1)
    .iTunesNext:active
        border-bottom-color: rgba(128,128,128,1)
    .iTunesPre:active
        border-top-color: rgba(128,128,128,1)
    .Disk
        background-color: rgba(226,161,54,1)
        position: relative
        font-size: 10em
        left: 1em; top:0.7em
        width:5em;height:4em
        border:0.2em solid rgba(256,256,256,1)
        border-right: 0.5em solid rgba(256,256,256,1)
        z-index:99999
    .DiskN
        width: 9em; height:4em
        margin-left:2em;
        margin-top:-3.5em;
        text-overflow:ellipsis;
        overflow:hidden;
        font-size:10em
        transform:rotate(-90deg)
        font-style: Black
        z-index:99999
    .iTunesCover
        position: fixed;
        left:410em; bottom:500em;
        width:200em; height:200em;
        background-color: rgba(10,10,10,1);
        z-index:99999
    .iTunesCoverMask
        color:white
        position: fixed;
        margin-left:5em; margin-top:5em;
        width: 190em; height: 190em;
        background-color: rgba(10,10,10,0.75);
    .iTunesRatingBlock
        width:33em;height:10em;
        margin-left:1em;margin-right:1em;
        background-color: rgba(256,256,256,0.5);
        display:inline-block;

"""

render: -> """
    <div class="left" style="float:left">
        <div class="iTunesCover CoverCell">
            <div class="iTunesCoverMask">
                <div style="font-size:30em;font-family:IMPACT">SEELE</div>
                <div style="font-size:70em;font-family:IMPACT" id="iTunesTrack">00</div>
                <div style="font-size:30em;font-family:IMPACT">SOUND</div>
                <div style="font-size:30em;font-family:IMPACT">ONLY</div>
            </div>
            <div style="width:190em;height:190em;margin-top:5em" id="iTunesCoverImg"></div>
            <div class="iTunesRatingBlock" id="rate1"></div>
            <div class="iTunesRatingBlock" id="rate2"></div>
            <div class="iTunesRatingBlock" id="rate3"></div>
            <div class="iTunesRatingBlock" id="rate4"></div>
            <div class="iTunesRatingBlock" id="rate5"></div>
        </div>
        <div class="nav a2 CoverCell" target="_blank" href="#" id="44"><s></s><b1></b1></div>
        <div class="nav a2 CoverCell" target="_blank" href="#" id="45"><s1></s1><b></b></div>
        <div class="nav a0" target="_blank" href="#" id="46"><s></s><b></b>
            <div class="id">46</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="47"><s></s><b></b>
            <div class="id">47</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <p></p>

        <div class="nav a1 CoverCell" target="_blank" href="#" id="48"><s></s><b2></b2></div>
        <div class="nav a0" target="_blank" href="#" id="49"><s></s><b></b>
            <div class="id">49</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="50"><s></s><b></b>
            <div class="id">50</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>

        <div class="nav ai" target="_blank" href="#" id="51"></div>
        <div class="nav a2 NetCell" target="_blank" href="#" style="z-index:9999"><s1></s1><b></b>
                    <div class="contentS" style="margin-left:-25em">
                        <span style="font-size:15em">Ibytes/s</span>
                    </div>
                    <div class="content"  style="margin-left:30em;margin-top:-70em;font-family:Futura;font-style:normal">
                        <span class="NetU" style="font-size:25em">Fehler</span>
                    </div>
                    <div class="contentS" style="position:absolute;left:55em;top:-95em;">
                        <span style="font-size:15em">Obytes/s</span>
                    </div>
        </div>
        <div class="nav a5" target="_blank" href="#" id="53"><s1></s1><b1></b1></div>
        <div class="nav a0" target="_blank" href="#" id="54"><s></s><b></b>
            <div class="id">54</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <p></p>

        <div class="nav a1 a2 NetCell" target="_blank" href="#"><s></s><b2></b2>
            <div class="content"  style="margin-left:30em;margin-top:-4em;font-family:Futura;font-style:normal">
                <span class="NetD" style="font-size:25em">Fehler</span>
            </div></div>
        <div class="nav a5" target="_blank" href="#" id="56"><s></s><b3></b3></div>
        <div class="nav a5" target="_blank" href="#" id="57" style="z-index:99999"><s2></s2><b></b>
            <div class="Rotate" style="text-overflow:ellipsis;
                                         overflow:hidden;
                                         position:absolute;
                                         top:-85em;left:-20em;
                                         text-align:center;height:40em;width:200em">
                <span id="iTunesArtist" style="font-size:12em"></span>
            </div>
            <div class="Rotate" style="text-overflow:ellipsis;
                                         overflow:hidden;
                                         position:absolute;
                                         top:-85em;left:-92em;
                                         text-align:center;height:40em;width:200em">
                <span id="iTunesTitle" style="font-size:12em"></span>
            </div>
            <div class="iTunesPre"></div><div class="iTunesPre"></div>
            <div class="iTunesPause"></div><div class="iTunesPlay"></div>
            <div class="iTunesNext"></div><div class="iTunesNext"></div></div>
        <div class="nav ai" target="_blank" href="#" id="58"><s></s><b></b></div>
        <div class="nav a0" target="_blank" href="#" id="59"><s></s><b></b>
            <div class="id">59</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a5" target="_blank" href="#" id="60"><s></s><b2></b2></div>
        <div class="nav a0" target="_blank" href="#" id="61"><s></s><b></b>
            <div class="id">61</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <p></p>

        <div class="nav a2" target="_blank" href="#" id="62" style="margin-right:140em"><s></s><b></b>
            <div class="Disk">Vol。</div>
            <div class="DiskN" id="62content"></div></div>
        <div class="nav a0" target="_blank" href="#" id="63"><s></s><b></b>
            <div class="id">63</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="64"><s></s><b></b>
            <div class="id">64</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>

        <div class="nav a2" target="_blank" href="#" id="65"><s></s><b></b>
            <div class="Disk">Vol。</div>
            <div class="DiskN" id="65content"></div></div>
        <div class="nav a2" target="_blank" href="#" id="66"><s></s><b></b>
            <div class="Disk">Vol。</div>
            <div class="DiskN" id="66content"></div></div>
        <div class="nav a0" target="_blank" href="#" id="67"><s></s><b></b>
            <div class="id">67</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="68"><s></s><b></b>
            <div class="id">68</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <p></p>

        <div class="nav a2" target="_blank" href="#" id="69" style="margin-right:140em"><s></s><b></b>
            <div class="Disk">Vol。</div>
            <div class="DiskN" id="69content"></div></div>
        <div class="nav a0" target="_blank" href="#" id="70"><s></s><b></b>
            <div class="id">70</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="71"><s></s><b></b>
            <div class="id">71</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>

        <div class="nav a2" target="_blank" href="#" id="72"><s></s><b></b>
            <div class="Disk">Vol。</div>
            <div class="DiskN" id="72content"></div></div>
        <div class="nav a0" target="_blank" href="#" id="73"><s></s><b></b>
            <div class="id">73</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="74"><s></s><b></b>
            <div class="id">74</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="75"><s></s><b></b>
            <div class="id">75</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <p></p>

        <div class="nav a1 a0" target="_blank" href="#" id="76"><s></s><b></b>
            <div class="id">76</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="77"><s></s><b></b>
            <div class="id">77</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="78"><s></s><b></b>
            <div class="id">78</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>

        <div class="nav a0" target="_blank" href="#" id="79"><s></s><b></b>
            <div class="id">79</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="80"><s></s><b></b>
            <div class="id">80</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="81"><s></s><b></b>
            <div class="id">81</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="82"><s></s><b></b>
            <div class="id">82</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
    </div>
    <div class="right">
        <div class="nav a0" target="_blank" href="#" id="0"><s></s><b></b>
            <div class="id">0</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="1"><s></s><b></b>
            <div class="id">1</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="2"><s></s><b></b>
            <div class="id">2</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="3"><s></s><b></b>
            <div class="id">3</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <p></p>

        <div class="nav a1 a0" target="_blank" href="#" id="4"><s></s><b></b>
            <div class="id">4</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a2" target="_blank" href="#" id="5"><s></s><b></b>
            <div class="contentS" style="margin-left:10em;margin-top:-5em">
                <span class="day" style="font-size:15em"></span>
            </div></div><p></p>
        <div class="nav a0" target="_blank" href="#" id="6"><s></s><b></b>
            <div class="id">6</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>

        <div class="nav a0" target="_blank" href="#" id="7"><s></s><b></b>
            <div class="id">7</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="8"><s></s><b></b>
            <div class="id">8</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a2" target="_blank" href="#" id="9"><s></s><b></b>
            <div class="content" style="margin-left:10em;margin-top:-5em">
                <span class="time" style="font-size:30em;font-family:Futura;font-style:normal"></span>
            </div></div><p></p>
        <div class="nav a1" target="_blank" href="#" id="CPUCell"><s></s><b></b>
            <div class="contentS" style="margin-left:-25em">
                <span style="font-size:15em">CPU</span>
            </div>
            <div class="content"  style="margin-left:30em;margin-top:-70em;font-family:Futura;font-style:normal">
                <span class="CPUU" style="font-size:30em;">Fehler</span>
            </div></div>

        <div class="nav a2" target="_blank" href="#" id="11"><s></s><b></b>
            <div class="content" style="margin-left:10em;margin-top:-5em">
                <span class="sal"></span>
            </div></div><p></p>
        <div class="nav ai" target="_blank" href="#" id="12"></div>

        <div class="nav a0" target="_blank" href="#" id="13"><s></s><b></b>
            <div class="id">13</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a3" target="_blank" href="#" id="14"><s></s><b1></b1></div>
        <div class="nav ai" target="_blank" href="#" id="15"><s></s><b></b>
            <div class="contentS" style="margin-left:-25em;margin-top:-4em">
                <span style="font-size:15em">verbleibend</span>
            </div>
            <div class="content"  style="margin-left:30em;margin-top:-65em">
                <span class="BatRe" style="font-size:30em">Fehler</span>
            </div></div><p></p>

        <div class="nav a1" target="_blank" href="#" id="MemCell"><s></s><b></b>
            <div class="contentS" style="margin-left:-25em">
                <span style="font-size:15em">Speicher</span>
            </div>
            <div class="content"  style="margin-left:30em;margin-top:-70em;font-family:Futura;font-style:normal">
                <span class="MEMU" style="font-size:30em">Fehler</span>
            </div></div>
        <div class="nav a3" target="_blank" href="#" id="17" style="z-index:9999"><s2></s2><b></b>
            <div class="Rotate" style="margin-top:-70em;margin-left:-60em;text-align:left"><span class="Bat"></span></div>
            <div class="Rotate" style="margin-top:-65em;margin-left:-35em;text-align:left"><span class="BatStatus"></span></div></div><p></p>
        <div class="nav ai" target="_blank" href="#" id="18"></div>

        <div class="nav a0" target="_blank" href="#" id="19"><s></s><b></b>
            <div class="id">19</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a3" target="_blank" href="#" id="BatCell"><s></s><b2></b2>
            <div class="Rotate" style="margin-top:-5em;margin-left:-35em;width:200em;text-align:center;font-family:Futura;font-style:normal">
                <span class="BatPer" style="font-size:20em">Fehler</span>
            </div></div>
        <div class="nav a0" target="_blank" href="#" id="21"><s></s><b></b>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="contentS" style="text-decoration:underline overline;font-size:15em"><u></u><d></d>WARNUNG</div></div>
        <p></p>

        <div class="nav a1 a0" target="_blank" href="#" id="22"><s></s><b></b>
            <div class="id">22</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a2" target="_blank" href="#" id="TrashCell"><s></s><b></b>
            <div class="contentS" style="margin-left:-25em;margin-top:-5em">
                <span style="font-size:15em">Papierkorb</span>
            </div>
            <div class="content"  style="margin-left:30em;margin-top:-65em">
                <span class="TrashSize" style="font-size:30em">Fehler</span>
            </div></div><p></p>
        <div class="nav ai" target="_blank" href="#" id="24"></div>

        <div class="nav a0" target="_blank" href="#" id="25"><s></s><b></b>
            <div class="id">25</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a0" target="_blank" href="#" id="26"><s></s><b></b>
            <div class="id">26</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav ai" target="_blank" href="#" id="27"></div><p></p>

        <div class="nav a1" target="_blank" href="#" id="IPCell"><s></s><b></b>
            <div class="contentS" style="margin-left:-25em">
                <span style="font-size:15em">PublikIP</span>
            </div>
            <div class="content"  style="margin-left:15em;margin-top:-64em;">
                <span class="PubIP" style="font-size:13em;font-family:Futura;font-style:normal">Fehler</span>
            </div></div>
        <div class="nav a0" target="_blank" href="#" id="29"><s></s><b></b>
            <div class="id">29</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div><p></p>
        <div class="nav ai" target="_blank" href="#" id="30"></div>

        <div class="nav a0" target="_blank" href="#" id="31"><s></s><b></b>
            <div class="id">31</div>
            <o></o><o style="transform:rotate(-60deg)"></o><o style="transform:rotate(-120deg)"></o>
            <div class="Wcontent" style="text-decoration:underline overline"><u></u><d></d>WARNUNG</div></div>
        <div class="nav a2" target="_blank" href="#" id="32"><s></s><div style="font-size:20em">32</div><b></b></div>
        <div class="nav ai" target="_blank" href="#" id="33"></div><p></p>
        <div class="nav ai" target="_blank" href="#" id="34"></div><p></p>

        <div class="nav a4" target="_blank" href="#" id="35" style="margin-right:140em"><s></s><b1></b1></div>
        <div class="nav a4" target="_blank" href="#" id="36"><s></s><b1></b1>
            <div class='a4x' style="transform:rotate(-90deg);margin-left:-10em;visibility:hidden">
                <div style="font-size:20em">OUTPUT</div>
            </div>
        </div><p></p>
        <div class="nav ai" target="_blank" href="#" id="37"></div>

        <div class="nav a4" target="_blank" href="#" id="38"><s></s><b3></b3></div>
        <div class="nav a4" target="_blank" href="#" id="39"><s2></s2><b3></b3></div>
        <div class="nav a4" target="_blank" href="#" id="40" style="z-index:9999"><s2></s2><b></b>
            <div class="a4x" style="margin-top:-200em;margin-left:-150em;width:400em;transform:rotate(-90deg);text-align:left;visibility:hidden;line-height:110%">
                <span class="OP" style="text-transform:none;font-size:20em"></span>
            </div>
        </div>
        <p></p>

        <div class="nav a4" target="_blank" href="#" id="41" style="margin-right:140em"><s></s><b2></b2></div>
        <div class="nav a4" target="_blank" href="#" id="42"><s></s><b2></b2></div><p></p>
        <div class="nav ai" target="_blank" href="#" id="43"></div>
    </div>
"""

command:    "   pmset -g batt | grep \"%\" | awk 'BEGINN { FS = \";\" };{ print $1,$2,$3,$4,$5 }' | sed -e 's/-I/I/' -e 's/-0//' -e 's/;//' -e 's/;//' &&
                ps aux  | awk 'BEGIN { sum = 0 }  { sum += $3 }; END { print sum }' &&
                sysctl hw.ncpu | awk '{print $2}' &&
                ps aux  | awk 'BEGIN { sum = 0 }  { sum += $4 }; END { print sum }' &&
                du -ch ~/.Trash | grep total | cut -c 1-5 &&

                chmod +x Eva.widget/netstat.sh && Eva.widget/netstat.sh &&
                defaults read ~/Library/Preferences/ByHost/com.apple.notificationcenterui doNotDisturb &&

                osascript 'Eva.widget/iTunes.scpt' &&
                ls -F /Volumes/ | awk -F'\t' '{ print $0}'
            "
afterRender: (domEl) ->
#   Get System Language
    language = navigator.language;
#   Define constants
    window.segments = ["子時", "丑時", "寅時", "卯時", "辰時", "巳時", "午時", "未時", "申時", "酉時", "戌時", "亥時"]
    if (language.indexOf("de") > -1)
        window.Batterievalues  = [
            'NUR AC'
            ''
            'AC Power'
            ''
        ]
        window.daylist = [
            'Sonntag'
            'Montag'
            'Dienstag'
            'Mittwoch'
            'Donnerstag'
            'Freitag'
            'Samstag'
        ]
        window.TrashEmpty = "Leer"
        window.ErrorMessage = "Fehler"
        window.BatteryStatus = [
            'laden'
            'geladen'
            'entladen'
            'beenden'
        ]
        window.BatteryType = "innenbatterie"
    else
        window.Batterievalues  = [
            'AC Only'
            ''
            'AC Power'
            ''
        ]
        window.daylist = [
            'Sunday'
            'Monday'
            'Tuesday'
            'Wednesday'
            'Thursday'
            'Friday'
            'Saturday'
        ]
        window.TrashEmpty = "Empty"
        window.ErrorMessage = "Error"
        window.BatteryStatus = [
            'charging'
            'charged'
            'discharging'
            'finishing'
        ]
        window.BatteryType = "internalbattery"
        $(domEl).find("#MemCell     span").text("Memory")
        $(domEl).find("#IPCell      span").text("PublicIP")
        $(domEl).find("#TrashCell   span").text("Trash")
        $(domEl).find(".Wcontent        ").html("<u></u><d></d>WARNING")
        $(domEl).find("#21          span").html("<u></u><d></d>WARNING")
#   Initialise warnings
    window.warning=0;
    window.Bwarning=0;
    window.Cwarning=0;
    window.Nwarning=0;
    window.Mwarning=0;
    window.Owarning=0;
    $(domEl).on 'click', '.iTunesPre', => @run "osascript -e 'tell application \"iTunes\" to previous track'"
    $(domEl).on 'click', '.iTunesNext', => @run "osascript -e 'tell application \"iTunes\" to next track'"
    $(domEl).on 'click', '.iTunesPause', => @run "osascript -e 'tell application \"iTunes\" to pause'"
    $(domEl).on 'click', '.iTunesPlay', => @run "osascript -e 'tell application \"iTunes\" to play'"
    $(domEl).on 'click', '#TrashCell', => @run "osascript -e 'tell application \"Finder\" to empty'"
#   Command to open up mounted volumes
    $(domEl).on 'click', '#66', => @run "ls /Volumes/ | awk -F'\t' '{ print $0}' > tmp.txt;i=1; cat tmp.txt | sed -e 's/[ ]/\\ /g ' | while read line; do if [ \"$i\" -eq 1 ]; then open /Volumes/\"${line}\"; fi; let i=i+1; done; rm tmp.txt
"
    $(domEl).on 'click', '#69', => @run "ls /Volumes/ | awk -F'\t' '{ print $0}' > tmp.txt;i=1; cat tmp.txt | sed -e 's/[ ]/\\ /g ' | while read line; do if [ \"$i\" -eq 2 ]; then open /Volumes/\"${line}\"; fi; let i=i+1; done; rm tmp.txt
"
    $(domEl).on 'click', '#72', => @run "ls /Volumes/ | awk -F'\t' '{ print $0}' > tmp.txt;i=1; cat tmp.txt | sed -e 's/[ ]/\\ /g ' | while read line; do if [ \"$i\" -eq 3 ]; then open /Volumes/\"${line}\"; fi; let i=i+1; done; rm tmp.txt
"
    $(domEl).on 'click', '#62', => @run "ls /Volumes/ | awk -F'\t' '{ print $0}' > tmp.txt;i=1; cat tmp.txt | sed -e 's/[ ]/\\ /g ' | while read line; do if [ \"$i\" -eq 4 ]; then open /Volumes/\"${line}\"; fi; let i=i+1; done; rm tmp.txt
"
    $(domEl).on 'click', '#65', => @run "ls /Volumes/ | awk -F'\t' '{ print $0}' > tmp.txt;i=1; cat tmp.txt | sed -e 's/[ ]/\\ /g ' | while read line; do if [ \"$i\" -eq 5 ]; then open /Volumes/\"${line}\"; fi; let i=i+1; done; rm tmp.txt
"


update: (output, domEl) ->
#   functions
    # This is for the warning animations, for better battery life, please consider changing these settings
    animation_on = (cell) -> () ->
        if warning==1
            $(domEl).find("#{cell} s").css("animation", "meow_BS_red 1s linear 0s infinite alternate")
            $(domEl).find("#{cell} b").css("animation", "meow_BB_red 1s linear 0s infinite alternate")
            $(domEl).find("#{cell}"  ).css("animation", "meow_BG_red 1s linear 0s infinite alternate")
        else
            $(domEl).find("#{cell} s").css("animation", "meow_BS_ora 1s linear 0s infinite alternate")
            $(domEl).find("#{cell} b").css("animation", "meow_BB_ora 1s linear 0s infinite alternate")
            $(domEl).find("#{cell}"  ).css("animation", "meow_BG_ora 1s linear 0s infinite alternate")
    animation_off = (cell) ->
        $(domEl).find("#{cell} s").css("animation", "")
        $(domEl).find("#{cell} b").css("animation", "")
        $(domEl).find("#{cell}"  ).css("animation", "")
    # This function is for changing the colour of cell(s).
    colorChange = (cell, colour) ->
        if $.type(cell) == "object"
            $element = cell
            cell = ""
            $element.css("background",                          colour)
        else
            $element = $(domEl)
            $element.find("#{cell}").css("background",          colour)
        $element.find("#{cell} s").css("border-bottom-color",   colour)
        $element.find("#{cell} b").css("border-top-color",      colour)
        $element.find("#{cell} s1").css("border-bottom-color",  colour)
        $element.find("#{cell} s2").css("border-bottom-color",  colour)
        $element.find("#{cell} b1").css("border-top-color",     colour)
        $element.find("#{cell} b2").css("border-top-color",     colour)
        $element.find("#{cell} b3").css("border-top-color",     colour)
    # Display disk information
    diskDisplay = (cell, tmp) ->
        $(domEl).find("#{cell}").css("visibility","visible")
        $(domEl).find("#{cell} .DiskN").text("#{tmp[0..(tmp.length-2)]}")
        #console .log tmp.indexOf("@")
        if (tmp.indexOf("@") > -1 )
            $(domEl).find("#{cell} .Disk").css("background-color","rgba(128,128,160,1)")
            $(domEl).find("#{cell} .Disk").text("Sys。")
        else
            $(domEl).find("#{cell} .Disk").css("background-color","rgba(226,161,54,1)")
            $(domEl).find("#{cell} .Disk").text("Vol。")
    # General warning settings. This function is called when a general warning is on,
    # which will turn every not-in-use cell into displaying warning signals
    warning_on = () ->
        animation_off(".a0")
        for element in $(domEl).find(".a0")
            work = (cell) -> () ->
                $cell = $(cell)
                $cell.find(".Wcontent").css("visibility","visible")
                $cell.find(".id").css("display"   ,"none"   )
                if warning==1
                    colorChange($cell, "rgba(256,0,0,1)")
                    $(domEl).find(".Wcontent").html("<u></u><d></d>WARNUNG")
                else
                    colorChange($cell, "rgba(256,96,0,1)")
                    $(domEl).find(".Wcontent").html("NoDisturb")
            setTimeout (work(element)), Math.random() * 1000
        setTimeout (animation_on(".a0")), 1000

    warning_off = () ->
        if warning+Mwarning>0
            warning_on()
        else
            for element in $(domEl).find(".a0")
                work = (cell) -> () ->
                    $cell = $(cell)
                    $cell.find(".Wcontent").css("visibility","hidden"      )
                    $cell.find(".id"      ).css("display"   ,"inline-block")
                    colorChange($cell, "rgba(10,10,10,1)")
                setTimeout (work(element)), Math.random() * 1000
            animation_off(".a0")
#   Processing time
    # This is for outputing the time. Nothing really
    date = new Date()
    hour = date.getHours()
    minutes = date.getMinutes()
    days = date.getDay()
    minutes = "0"+ minutes if minutes < 10
    timeSegment = segments[0]
    timeSegment = segments[1] if 1 <= hour < 3
    timeSegment = segments[2] if 3 <= hour < 5
    timeSegment = segments[3] if 5 <= hour < 7
    timeSegment = segments[4] if 7 <= hour < 9
    timeSegment = segments[5] if 9 <= hour < 11
    timeSegment = segments[6] if 11 <= hour < 13
    timeSegment = segments[7] if 13 <= hour < 15
    timeSegment = segments[8] if 15 <= hour < 17
    timeSegment = segments[9] if 17 <= hour < 19
    timeSegment = segments[10] if 19 <= hour < 21
    timeSegment = segments[11] if 21 <= hour < 23

#   Processing output, passing values from command line output to variables
    AllOutputs = output.split('\n')
    if (AllOutputs[0].indexOf("InternalBattery") > -1)
        window.Batterievalues  = AllOutputs[0].split(' ')
        i = 0
    else
        i = -1
    CPUUsage        = AllOutputs[1+i].split(' ')
    CPUAmount       = AllOutputs[2+i].split(' ')
    MemUsage        = AllOutputs[3+i].split(' ')
    Trashvalues     = AllOutputs[4+i].split(' ')
    Networkvalues   = AllOutputs[5+i].split(' ')
    Disturbvalues   = AllOutputs[6+i]
    if (AllOutputs[7+i].indexOf("osascript: Eva.widget/iTunes.scp:") > -1)
        AllOutputs[7+i] = "~ ~ ~ 0 ~ 0"
    iTunesvalues    = AllOutputs[7+i].split('~')

    Trashvalues="#{Trashvalues}".replace /,/g, ''
    Trashvalues="#{Trashvalues}".replace /\s+/g, ''
    if (AllOutputs[7+i].indexOf("~ ~ ~ 0 ~ 0") > -1)
        $(domEl).find(".CoverCell").css("visibility","hidden")
        $(domEl).find("#44").css("visibility","hidden")
        $(domEl).find("#45").css("visibility","hidden")
        $(domEl).find("#48").css("visibility","hidden")
    else
        $(domEl).find(".CoverCell").css("visibility","visible")
        $(domEl).find("#44").css("visibility","visible")
        $(domEl).find("#45").css("visibility","visible")
        $(domEl).find("#48").css("visibility","visible")
    iTunesvalues[3] = "0"+ iTunesvalues[3] if iTunesvalues[3] < 10
    if (parseInt(Networkvalues[0])>=1024)
        Networkvalues[0] = parseInt(Networkvalues[0])/1024
        if (parseInt(Networkvalues[0])>=1024)
            Networkvalues[0] = parseInt(Networkvalues[0])/1024
            Networkvalues[0] = Math.round(Networkvalues[0]*100)/100 + 'M'
        else
            Networkvalues[0] = Math.round(Networkvalues[0]*100)/100 + 'K'
    if (parseInt(Networkvalues[1])>=1024)
        Networkvalues[1] = parseInt(Networkvalues[1])/1024
        if (parseInt(Networkvalues[1])>=1024)
            Networkvalues[1] = parseInt(Networkvalues[1])/1024
            Networkvalues[1] = Math.round(Networkvalues[1]*100)/100 + 'M'
        else
            Networkvalues[1] = Math.round(Networkvalues[1]*100)/100 + 'K'
    # The following is for Public IP testing
    $.ajax 'https://api.ipify.org?format=json',
        dataType: 'json'
        success: (data, textStatus, jqXHR) ->
            $(domEl).find('.PubIP').text("#{data.ip}")
        error: (jqXHR, textStatus, errorThrown) ->
            $(domEl).find('.PubIP').text("#{ErrorMessage}")
    if $(domEl).find('.PubIP').text().indexOf("#{ErrorMessage}") > -1
        Nwarning=1
    else
        Nwarning=0
    if Disturbvalues == '1'
        Mwarning=1
    else
        Mwarning=0
#   Deliver output
    # Disks, all five disks are hidden by default, only when such disk exists shall it be displayed
    # Because each volume takes a single line in the output, we have to judge by the length of output
    idisk = i+8
    if (AllOutputs.length > idisk+1)
        diskDisplay("#66", AllOutputs[idisk+0])
    else    $(domEl).find("#66").css("visibility","hidden")
    if (AllOutputs.length > idisk+2)
        diskDisplay("#69", AllOutputs[idisk+1])
    else    $(domEl).find("#69").css("visibility","hidden")
    if (AllOutputs.length > idisk+3)
        diskDisplay("#72", AllOutputs[idisk+2])
    else    $(domEl).find("#72").css("visibility","hidden")
    if (AllOutputs.length > idisk+4)
        diskDisplay("#62", AllOutputs[idisk+3])
    else    $(domEl).find("#62").css("visibility","hidden")
    if (AllOutputs.length > idisk+5)
        diskDisplay("#65", AllOutputs[idisk+4])
    else    $(domEl).find("#65").css("visibility","hidden")
    # Outputting all the information for debug
    $(domEl).find('.OP').text("#{output}")
    # Battery information, originally it's in english, this part translates all the
    # information into German
    if (Batterievalues[0].indexOf("InternalBattery") > -1)
        $(domEl).find('.Bat').text("#{BatteryType}")
    else
        $(domEl).find('.Bat').text("#{Batterievalues[0]}")
    if (Batterievalues[1].indexOf("id=") > -1)
        BatteryPercentage=Batterievalues[2]
        BatteryState=Batterievalues[3]
        $(domEl).find('.BatPer').text("#{Batterievalues[2]}")
        if (Batterievalues[3].indexOf("discharging") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[2]}")
        else if (Batterievalues[3].indexOf("charged") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[1]}")
        else if (Batterievalues[3].indexOf("charging") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[0]}")
        else if (Batterievalues[3].indexOf("finishing") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[3]}")
        else
            $(domEl).find('.BatStatus').text("#{Batterievalues[3]}")
        $(domEl).find('.BatRe').text("#{Batterievalues[4]}")
    else
        BatteryPercentage=Batterievalues[1]
        BatteryState=Batterievalues[2]
        $(domEl).find('.BatPer').text("#{Batterievalues[1]}")
        if (Batterievalues[2].indexOf("discharging") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[2]}")
        else if (Batterievalues[2].indexOf("charged") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[1]}")
        else if (Batterievalues[2].indexOf("charging") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[0]}")
        else if (Batterievalues[2].indexOf("finishing") > -1)
            $(domEl).find('.BatStatus').text("#{BatteryStatus[3]}")
        else
            $(domEl).find('.BatStatus').text("#{Batterievalues[2]}")
        $(domEl).find('.BatRe').text("#{Batterievalues[3]}")
    # Output other information
    $(domEl).find('.CPUU').text("#{Math.floor(CPUUsage/CPUAmount)}%")
    $(domEl).find('.MEMU').text("#{Math.floor(MemUsage)}%")
    $(domEl).find('.sal').text("#{timeSegment}")
    $(domEl).find('#iTunesTrack').text("#{iTunesvalues[3]}")
    $(domEl).find('#iTunesArtist').text("#{iTunesvalues[1]}")
    $(domEl).find('#iTunesTitle').text("#{iTunesvalues[0]}")
    if (Networkvalues[0]?)
        $(domEl).find('.NetU').text("#{Networkvalues[0]}")
    if (Networkvalues[1]?)
        $(domEl).find('.NetD').text("#{Networkvalues[1]}")
    $(domEl).find('.time').text("#{hour}:#{minutes}")
    $(domEl).find('.day').text("#{daylist[days]}")
    if (Trashvalues.indexOf("0B") > -1)
        $(domEl).find('.TrashSize').text("#{TrashEmpty}")
    else
        $(domEl).find('.TrashSize').text("#{Trashvalues}")
    $(domEl).find('#iTunesCoverImg').html("<img style='width:190em;height:190em;margin-left:5em;' src='Eva.widget/album.jpg'>")
#   Dealing with rating
    if (iTunesvalues[4]>0)
        $(domEl).find('#rate1').css("visibility","visible")
    else
        $(domEl).find('#rate1').css("visibility","hidden")
    if (iTunesvalues[4]>20)
        $(domEl).find('#rate2').css("visibility","visible")
    else
        $(domEl).find('#rate2').css("visibility","hidden")
    if (iTunesvalues[4]>40)
        $(domEl).find('#rate3').css("visibility","visible")
    else
        $(domEl).find('#rate3').css("visibility","hidden")
    if (iTunesvalues[4]>60)
        $(domEl).find('#rate4').css("visibility","visible")
    else
        $(domEl).find('#rate4').css("visibility","hidden")
    if (iTunesvalues[4]>80)
        $(domEl).find('#rate5').css("visibility","visible")
    else
        $(domEl).find('#rate5').css("visibility","hidden")
#   Dealing with warnings
    # Bwarning stands for Battery warning, triggers when battery drops below 20% without charging.
    if (parseInt(BatteryPercentage) <= 20 & BatteryState.indexOf("discharging") > -1)
        if (Bwarning != 1)
            colorChange(".a3", "rgba(256,0,0,1)")
            colorChange("#15", "rgba(128,0,0,1)")
            $(domEl).find("#15").css("visibility","visible")
        Bwarning = 1
    else
        if (Bwarning != 0)
            colorChange(".a3", "rgba(10,10,10,1)")
            colorChange("#15", "rgba(128,0,0,0)")
            $(domEl).find("#15").css("visibility","hidden")
        Bwarning = 0
    # Nwarning stands for Network Warning, triggers when no external ip address could be fetched
    if Nwarning == 1
        colorChange("#IPCell", "rgba(256,10,10,1)")
    else
        colorChange("#IPCell", "rgba(10,10,10,1)")
    # Cwarning is for CPU usage. Default value is to trigger when CPU usage reaches 90%
    if CPUUsage/CPUAmount > 90
        if (Cwarning != 1)
            colorChange("#CPUCell", "rgba(256,0,0,1)")
        Cwarning = 1
    else
        if (Cwarning != 0)
            colorChange("#CPUCell", "rgba(10,10,10,1)")
        Cwarning = 0
    #General warning trigger.
    if Bwarning+Cwarning+Mwarning != 0
        if Bwarning+Cwarning !=0
            if (warning != 1)
                warning_on()
                warning = 1
        else
        if (Owarning != 1)
            warning_on()
            Owarning = 1
    else
        if (Owarning!=0 || warning!=0 )
            warning_off()
            Owarning==0
            warning==0


#   hover effects, dealing with hovering
    $('#IPCell').hover (->
            if Cwarning == 1
                colorChange("#IPCell", "rgba(128,0,0,1)")
            else
                colorChange("#IPCell", "rgba(128,128,128,1)")
    ), (->
            if Cwarning == 1
                colorChange("#IPCell", "rgba(256,0,0,1)")
            else
                colorChange("#IPCell", "rgba(10,10,10,1)")
    )
    $('#CPUCell').hover (->
            if Cwarning == 1
                colorChange("#CPUCell", "rgba(128,0,0,1)")
            else
                colorChange("#CPUCell", "rgba(128,128,128,1)")
    ), (->
            if Cwarning == 1
                colorChange("#CPUCell", "rgba(256,0,0,1)")
            else
                colorChange("#CPUCell", "rgba(10,10,10,1)")
    )
    $('.a3').hover (->
            if Bwarning == 1
                colorChange(".a3", "rgba(128,0,0,1)")
            else
                colorChange(".a3", "rgba(128,128,128,1)")
    ), (->
            if Bwarning == 1
                colorChange(".a3", "rgba(256,0,0,1)")
            else
                colorChange(".a3", "rgba(10,10,10,1)")
    )
    $('#32').hover (
        ->
            colorChange(".a4", "rgba(128,128,128,1)")
            $(domEl).find(".a4x").css("visibility",               "visible")
    ), (
        ->
            colorChange(".a4", "rgba(10,10,10,0)")
            $(domEl).find(".a4x").css("visibility",               "hidden")
    )

    $('.NetCell').hover (->
            colorChange(".NetCell", "rgba(128,128,128,1)")
    ), (->
            colorChange(".NetCell", "rgba(10,10,10,1)")
    )
    $('.CoverCell').hover (->
            colorChange(".CoverCell", "rgba(128,128,128,1)")
    ), (->
            colorChange(".CoverCell", "rgba(10,10,10,1)")
    )
