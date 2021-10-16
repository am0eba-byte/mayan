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
                <title>Mayan Project</title>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <link rel="preconnect" href="https://fonts.gstatic.com" />
                <link href="https://fonts.googleapis.com/css2?family=New+Tegomin" rel="stylesheet" />
                <link rel="stylesheet" type="text/css" href="mayanStyling.css" />
                <link rel="shortcut icon" type="image/png"
                    href="images/hieroglyphs/woman.jpg" />
            </head>
            <body>
                <header>
                    <div class="titlePic"><h1>Ancient Mayans Digitized</h1>
                        <img class="headImg" src="images/designs/full_mural.png"/>
                    </div>
                    <div class="navbar">
                        <a class="nav" href="index.html">Home</a>
                        <a class="nav" href="siteMap.html">Mayan Sites Map</a>
                        <a class="nav" href="Gods.html">God-ography</a>
                        <a class="nav" href="Relics.html">Timeline</a>
                        <a class="nav" href="3Dmodels.html">3D Models</a>
                        <a class="nav" rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img
                            alt="Creative Commons License" style="border-width:0"
                            src="https://i.creativecommons.org/l/by-nc/4.0/80x15.png" /></a>
                        
                    </div>
                </header>
                <section class="gods">
                    <h2>Mayan Godography</h2>
                    <table><xsl:apply-templates select="descendant::index"/></table>
                </section>
                <footer>
                    
                </footer>
                
                
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="descendant::index">
        
        <tr>
            <th>Image</th>
        <th>God Name</th>
            <th>Alternate Names</th>
            <th>God Type</th>
            <th>God Origins</th>
            <th>Family Relationships</th>
            
            <th>Description</th>
        </tr>
        
       <xsl:apply-templates select="character"/>
        
       
        
    </xsl:template>
    
    <xsl:template match="character">
        
        <tr>
            <td><xsl:apply-templates select="img"/></td>
            <td><xsl:apply-templates select="name"/></td>
            <td><ul>
                <xsl:for-each select="altName">
                    <li><xsl:apply-templates/></li>
                </xsl:for-each>
            </ul></td>
            <td><xsl:apply-templates select="entity"/></td>
            <td><xsl:apply-templates select="of"/></td>
            <td><xsl:apply-templates select="family"/></td>
            <td><xsl:apply-templates select="desc"/></td>
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
        <h6>Parents:</h6>
        <ul>
            <xsl:for-each select="parents/*">
                <li><xsl:apply-templates/></li>
            </xsl:for-each>
        </ul>
        <h6>Children:</h6>
        <ul>
            <xsl:for-each select="children/*">
                <li><xsl:apply-templates/></li>
            </xsl:for-each>
        </ul>
        <h6>Grandparents:</h6>
        <ul>
            <xsl:for-each select="grandparents/*">
                <li><xsl:apply-templates/></li>
            </xsl:for-each>
        </ul>
        <h6>Siblings:</h6>
        <ul>
            <xsl:for-each select="brother">
                <li><xsl:apply-templates/></li>
            </xsl:for-each>
        </ul>
    </xsl:template>
    
</xsl:stylesheet>