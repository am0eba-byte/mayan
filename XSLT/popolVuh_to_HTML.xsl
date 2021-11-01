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
                <title>Popol Vuh</title>
                <link rel="stylesheet" type="text/css" href="mayanStyling.css"/>
            </head>
            <body>
                
                <xsl:apply-templates select="descendant::popolVuh"/>
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
        <a class="spk"><span class="{@idref ! data()}"><xsl:apply-templates/></span></a>
    </xsl:template>
    
    <xsl:template match="character">
        <span class="{@idref ! data()}"><xsl:apply-templates/></span>
    </xsl:template>
</xsl:stylesheet>