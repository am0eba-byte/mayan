<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Mayan Sites Timeline</title>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="preconnect" href="https://fonts.gstatic.com" />
                <link href="https://fonts.googleapis.com/css2?family=New+Tegomin" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Mayan+Numerals"
                    rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Walter+Turncoat" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Dokdo" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Frijole" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=New+Tegomin" rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Red+Hat+Display" rel="stylesheet" />
                <link rel="stylesheet" type="text/css" href="mayanStyling.css" />
                <link rel="shortcut icon" type="image/png" href="images/hieroglyphs/woman.jpg" />
                <script src="javascript/timeline.js">
                    /**/</script>
            </head>
            <body>
                <header>
                    <div class="titlePic">
                        <h1>
                            <span class="head">Ancient Mayans</span>
                            <span class="head">Digitized</span>
                        </h1>
                        <img alt="eleven gods" class="headImg" src="images/designs/eleven_gods.png" />
                    </div>
                    <div class="navbar">
                        <a class="nav" href="index.html">Home</a>
                        <a class="nav" href="siteMap.html">Mayan Sites Map</a>
                        <a class="nav" href="godography.html">God-ography</a>
                        <a class="nav" href="3Dmodels.html">3D Models</a>
                        <a class="nav" href="about.html">Project Team</a>
                        <div class="dropdown">
                            <button class="dropbtn">Discover</button>
                            <div class="dropdown-content">
                                <a class="nav" href="sitesStructRelicsTimeline.html">Maya Sites Timeline</a>
                                <a class="nav" href="godRelicRefs.html">Mayan Gods in Artifacts</a>
                                <a class="nav" href="godStructureRefs.html">Mayan Gods in Structures</a>
                            </div>
                        </div>
                        <a class="nav" rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">
                            <img alt="Creative Commons License" style="border-width:0"
                                src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" />
                        </a>
                    </div>
                </header>
                <section class="jsLegend">
                    <div class="legendWrap">
                        <div class="legend">
                            <fieldset>
                                <legend>Click to Highlight:</legend>
                                <div class="checkboxes">
                                    <h3>Eras</h3>
                                    <div>
                                        <input type="checkbox" id="EarlyPretoggle" />
                                        <span>Early Preclassic</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="MidPretoggle" />
                                        <span>Middle Preclassic</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="LatePretoggle" />
                                        <span>Late Preclassic</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="EarlyClastoggle" />
                                        <span>Early Classic</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="MidClastoggle" />
                                        <span>Middle Classic</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="LateClastoggle" />
                                        <span>Late Classic</span>
                                    </div>
                                </div>
                                <div class="checkboxes">
                                    <h3>Location by Country</h3>
                                    <div>
                                        <input type="checkbox" id="Guattoggle" />
                                        <span>Guatemala</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="MexYuctoggle" />
                                        <span>Mexico - Yucatan Peninsula</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="MexChitoggle" />
                                        <span>Mexico - Chiapas</span>
                                    </div>
                                    <div>
                                        <input type="checkbox" id="Hondtoggle" />
                                        <span>Honduras</span>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="content">
                        <h2>Timeline of Mayan Sites and Structures/Relics Within</h2>
                        <table class="timeline">
                            
                            <xsl:apply-templates select="descendant::site"/>
                            
                        </table>
                        
                        
                    </div>
                    
                </section>
                <footer>
                    <div class="foot">
                        <img alt="glyphs" class="foot" src="images/designs/angleGlyphs.png" />
                        <div class="footLinks">
                            <p class="foot">Hosted on <a href="https://newtfire.org/">Newtfire</a></p>
                            <p class="foot">Check out this site on the <a href="https://mayan.newtfire.org/"
                                >Newtfire Server</a></p>
                        </div>
                        <div class="footLinks">
                            <p class="foot">View this <a href="https://github.com/am0eba-byte/mayan">project
                                repo on GitHub</a></p>
                            <p class="foot">Read about the <a href="about.html">project team</a></p>
                        </div>
                        <img alt="glyphs" class="foot" src="images/designs/angleGlyph2.png" />
                    </div>
                </footer>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="site">
        <tr>
            <th>Mayan Site</th>
            <th>Date Active</th>
            <th>Site Structures</th>
            <th>Relics</th>
        </tr>
        <tr>
            <td><xsl:apply-templates select="name"/></td>
            <!-- SITES WITH SEPARATE PHASES OF ACTIVITY (KJ) -->
            <td><xsl:choose>
                <xsl:when test="dateActive => count() gt 1">
                    
                        <span>Miraflores Phase: <xsl:choose>
                            <xsl:when test=".[@id='#KJ']/dateActive[1]/@yearStart ! data() ! xs:integer(.) lt 0">
                                <xsl:apply-templates select="tokenize(.[@id='#KJ']/dateActive[1]/@yearStart ! data(), '-')"/> B.C.
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:apply-templates select="tokenize(.[@id='#KJ']/dateActive[1]/@yearStart ! data(), '-')"/> A.D.
                            </xsl:otherwise>
                        </xsl:choose>
                            to
                            <xsl:choose>
                                <xsl:when test=".[@id='#KJ']/dateActive[1]/@yearEnd ! data() ! xs:integer(.) lt 0">
                                    <xsl:apply-templates select="tokenize(.[@id='#KJ']/dateActive[1]/@yearEnd ! data(), '-')"/> B.C.
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="tokenize(.[@id='#KJ']/dateActive[1]/@yearEnd ! data(), '-')"/> A.D.
                                </xsl:otherwise>
                            </xsl:choose>
                        </span>
                        <span>
                            Esperanza Phase:
                            <xsl:choose>
                                <xsl:when test=".[@id='#KJ']/dateActive[1]/@yearStart ! data() ! xs:integer(.) lt 0">
                                    <xsl:apply-templates select="tokenize(.[@id='#KJ']/dateActive[2]/@yearStart ! data(), '-')"/> B.C.
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="./dateActive[2]/@yearStart ! data()"/> A.D.
                                </xsl:otherwise>
                            </xsl:choose>
                            to
                            <xsl:choose>
                                <xsl:when test="./dateActive[2]/@yearEnd ! data() ! xs:integer(.) lt 0">
                                    <xsl:apply-templates select="tokenize(./dateActive[2]/@yearEnd ! data(), '-')"/> B.C.
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:apply-templates select="./dateActive[2]/@yearEnd ! data()"/> A.D.
                                </xsl:otherwise>
                            </xsl:choose>
                        </span>
                    
                </xsl:when>
                <!-- SITES ACTIVE TIMES CONTINUOUS -->
                <xsl:otherwise>
                    <xsl:choose><xsl:when test="./dateActive/@yearStart ! data() ! xs:integer(.) lt 0"><xsl:apply-templates select="tokenize(./dateActive/@yearStart ! data(), '-')"/> B.C.</xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="./dateActive/@yearStart ! data()"/> A.D.
                        </xsl:otherwise>
                    </xsl:choose>
                    to
                    <xsl:choose><xsl:when test="./dateActive/@yearEnd ! data() ! xs:integer(.) lt 0"><xsl:apply-templates select="tokenize(./dateActive/@yearEnd ! data(), '-')"/> B.C.</xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select="./dateActive/@yearEnd ! data()"/> A.D.
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
            </td>
            
            <td>
                
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>