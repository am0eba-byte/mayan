<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="3.0">

    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>Mayan Project</title>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="preconnect" href="https://fonts.gstatic.com"/>
                <link href="https://fonts.googleapis.com/css2?family=New+Tegomin" rel="stylesheet"/>
                <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Mayan+Numerals"
                    rel="stylesheet"/>
                <link href="https://fonts.googleapis.com/css2?family=Walter+Turncoat"
                    rel="stylesheet"/>
                <link href="https://fonts.googleapis.com/css2?family=Dokdo" rel="stylesheet"/>
                <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great"
                    rel="stylesheet"/>
                <link href="https://fonts.googleapis.com/css2?family=Frijole" rel="stylesheet"/>
                <link href="https://fonts.googleapis.com/css2?family=New+Tegomin" rel="stylesheet"/>
                <link href="https://fonts.googleapis.com/css2?family=Red+Hat+Display"
                    rel="stylesheet"/>
                <link rel="stylesheet" type="text/css" href="mayanStyling.css"/>
                <link rel="shortcut icon" type="image/png" href="images/hieroglyphs/woman.jpg"/>
            </head>
            <body>
                <header>
                    <div class="titlePic">
                        <h1><span><span class="head">Ancient</span><span class="head"> Mayans</span></span>
                            <span class="head">Digitized</span></h1>
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
                                <a class="nav" href="sitesStructRelicsTimeline.html">Maya Sites
                                    Timeline</a>
                                <a class="nav" href="godRelicRefs.html">Mayan Gods in Artifacts</a>
                                <a class="nav" href="godStructureRefs.html">Mayan Gods in Structures</a>
                            </div>
                        </div> 
                        <a class="nav" rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"
                            ><img alt="Creative Commons License" style="border-width:0"
                                src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" /></a>
                        
                    </div>
                </header>
                <section class="gods">
                    <h2>Mayan Godography</h2>
                    <h3 class="godtableHead">Gods as Characters in the Popol Vuh</h3>
                    <table class="gods">
                        <xsl:apply-templates select="descendant::index" mode="PV"/>
                    </table>
                    <h3 class="godtableHead">Gods That Are Not Referenced in Popol Vuh</h3>
                    <table class="gods">
                        <xsl:apply-templates select="descendant::index" mode="nonPV"/>
                    </table>
                </section>
                <footer>
                    <div class="foot">
                        <img alt="glyphs" class="foot" src="images/designs/angleGlyphs.png"/>
                        <div class="footLinks">
                            <p class="foot">Hosted on <a href="https://newtfire.org/"
                                >Newtfire</a></p>
                            <p class="foot">Check out this site on the <a
                                    href="https://mayan.newtfire.org/">Newtfire Server</a></p>
                        </div>
                        <div class="footLinks">
                            <p class="foot">View this <a href="https://github.com/am0eba-byte/mayan"
                                    >project repo on GitHub</a></p>
                            <p class="foot">Read about the <a href="about.html">project team</a></p>
                        </div>
                        <img alt="glyphs" class="foot" src="images/designs/angleGlyph2.png"/>
                    </div>
                </footer>


            </body>
        </html>

    </xsl:template>

    <xsl:template match="descendant::index" mode="PV">
    <xsl:choose>
        <xsl:when test="character[@inPV = 'true']">
    
        <tr>
            <th>Image</th>
            <th>God Name</th>
            <th>Other Names</th>
            <th>Family Relationships</th>
            
            <th>Description</th>
        </tr>

            <xsl:apply-templates select="character[@inPV='true']" mode="PV"/>
        </xsl:when>
        <xsl:otherwise>
       
        </xsl:otherwise>
    </xsl:choose>
        

    </xsl:template>
    
    <xsl:template match="descendant::index" mode="nonPV">
        <xsl:choose>
            <xsl:when test="character[@inPV = 'false']">
                <tr>
                    <th>Image</th>
                    <th>God Name</th>
                    <th>Other Names</th>
                    <th>Description</th>
                </tr>
                <xsl:apply-templates select="character[@inPV='false']" mode="nonPV"/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="character[@inPV='true']" mode="PV">

        <tr>
            <td>
               <img class="god" src="{img/@src}"/>
            </td>
            <td id="{@xml:id}">
                <xsl:apply-templates select="name"/>
            </td>
            <td>
                <ul>
                    <xsl:for-each select="altName">
                        <li>
                            <xsl:apply-templates/>
                        </li>
                    </xsl:for-each>
                </ul>
            </td>
            <td>
                <xsl:apply-templates select="family"/>
            </td>
            <td>
                <xsl:apply-templates select="desc"/>
            </td>
        </tr>

    </xsl:template>
    
    <xsl:template match="character[@inPV='false']" mode="nonPV">
        
        <tr>
            <td>
                <img class="god" src="{img/@src}"/>
            </td>
            <td id="{@xml:id}">
                <xsl:apply-templates select="name"/>
            </td>
            <td>
                <ul>
                    <xsl:for-each select="altName">
                        <li>
                            <xsl:apply-templates/>
                        </li>
                    </xsl:for-each>
                </ul>
            </td>
            <td>
                <xsl:apply-templates select="desc"/>
            </td>
        </tr>
        
    </xsl:template>

    <xsl:template match="img">
        <img src="{@src}"/>
    </xsl:template>

    <xsl:template match="altName">

        <li>
            <xsl:for-each select="altName">
                <xsl:apply-templates/>
            </xsl:for-each>
        </li>

    </xsl:template>

    <xsl:template match="family">
        
        <xsl:choose>
            <xsl:when test="child::brother => count() gt 0">
                <div class="famDropdown">
            <button class="famDropbtn">Siblings:</button>
            <div class="famDropdown-content">
                <xsl:for-each select="brother">
                    <a href="{@idref}"><xsl:apply-templates/></a>
                    
                </xsl:for-each>
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
        
        <xsl:choose>
            <xsl:when test="child::grandparents => count() gt 0">
                <div class="famDropdown">
            <button class="famDropbtn">Grandparents:</button>
            <div class="famDropdown-content">
                
                <p><underline>Grandmother:</underline> <a href="{grandparents/grandma/@idref}"> <xsl:apply-templates select="grandparents/grandma"/></a></p>
                <p><underline>Grandfather:</underline> <a href="{grandparents/grandpa/@idref}"> <xsl:apply-templates select="grandparents/grandpa"/></a></p>
                
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
        
        <xsl:choose>
            <xsl:when test="child::parents => count() gt 0">
            <div class="famDropdown">
            <button class="famDropbtn">Parents:</button>
            <div class="famDropdown-content">
                <xsl:choose>
                <xsl:when test="child::parents/mother => count() gt 0">
                    <p><underline>Mother:</underline><a href="{parents/mother/@idref}"> <xsl:apply-templates select="parents/mother"/></a></p>
                </xsl:when>
                    <xsl:otherwise></xsl:otherwise>
                </xsl:choose>
                <p><underline>Father:</underline><a href="{parents/father/@idref}"> <xsl:apply-templates select="parents/father"/></a></p>
                
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
        
        <xsl:choose>
         <xsl:when test="child::children => count() gt 0">
        <div class="famDropdown">
            <button class="famDropbtn">Children:</button>
            <div class="famDropdown-content">
                <xsl:for-each select="children/*">
                    <a href="{@idref}"><xsl:apply-templates/></a>
                    
                </xsl:for-each>
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
     </xsl:choose>
     
     <xsl:choose>
         <xsl:when test="child::grandchildren => count() gt 0">
        <div class="famDropdown">
            <button class="famDropbtn">Grandchildren:</button>
            <div class="famDropdown-content">
                <xsl:for-each select="grandchildren/*">
                    <a href="{@idref}"><xsl:apply-templates/></a>
                    
                </xsl:for-each>
            </div>
        </div>
         </xsl:when>
      </xsl:choose>
      
      <xsl:choose>
          <xsl:when test="child::partner => count() gt 0">
        <div class="famDropdown">
            <button class="famDropbtn">Partner:</button>
            <div class="famDropdown-content">
                <a href="{partner/@idref}"><xsl:apply-templates select="partner"/></a>
            </div>
        </div>
          </xsl:when>
          <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
        
        <xsl:choose>
            <xsl:when test="child::babymom => count() gt 0">
        <div class="famDropdown">
            <button class="famDropbtn">Baby-Mamas:</button>
            <div class="famDropdown-content">
                <xsl:for-each select="babymom">
                    <a href="{@idref}"><xsl:apply-templates/></a>
                    
                </xsl:for-each>
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
        
        <xsl:choose>
            <xsl:when test="child::babydaddy => count() gt 0">
        <div class="famDropdown">
            <button class="famDropbtn">Baby-Daddy:</button>
            <div class="famDropdown-content">
                
                    <a href="{babydaddy/@idref}"><xsl:apply-templates select="babydaddy"/></a>
                    
                
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
        
        <xsl:choose>
            <xsl:when test="child::uncle => count() gt 0">
        <div class="famDropdown">
            <button class="famDropbtn">Uncle:</button>
            <div class="famDropdown-content">
                <xsl:for-each select="uncle">
                    <a href="{@idref}"><xsl:apply-templates/></a>
                    
                </xsl:for-each>
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
        
        <xsl:choose>
            <xsl:when test="child::nephews => count() gt 0">
        <div class="famDropdown">
            <button class="famDropbtn">Nephews:</button>
            <div class="famDropdown-content">
                <xsl:for-each select="nephews/*">
                    <a href="{@idref}"><xsl:apply-templates/></a>
                    
                </xsl:for-each>
            </div>
        </div>
            </xsl:when>
            <xsl:otherwise></xsl:otherwise>
</xsl:choose>

        
    </xsl:template>

</xsl:stylesheet>
