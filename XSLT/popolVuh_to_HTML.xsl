<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Popol Vuh</title>
                <link rel="stylesheet" type="text/css" href="mayanStyling.css"/>
            </head>
            <body>
                
                <xsl:apply-templates select="descendant::popolVuh"/>
                <iframe src="godography.html" height="500" width="300" name="Gods" class="iframe"></iframe>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="popolVuh">
        
        <h1><xsl:apply-templates select="title"/></h1>
        
       
            
                <xsl:for-each select="book"><div class="book">
                    <xsl:for-each select="part">
                        <div class="part"><h2><xsl:apply-templates select="head"/></h2>
                            <p><xsl:apply-templates select="text"/></p></div>
                    </xsl:for-each>
                </div></xsl:for-each>
        
        
    </xsl:template>
    
    <xsl:template match="book">
        <xsl:for-each select="part">
           <div class="part"><h2><xsl:apply-templates select="head"/></h2>
            <p><xsl:apply-templates select="text"/></p></div>
        </xsl:for-each>
    </xsl:template>   
    
    <xsl:template match="spk">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="character">
        <span class="{@idref ! data()}"><a href="godography.html{@idref ! data()}"><xsl:apply-templates/></a></span>
    </xsl:template>
</xsl:stylesheet>