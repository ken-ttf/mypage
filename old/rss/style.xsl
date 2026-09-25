<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:rss="http://purl.org/rss/1.0/"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  exclude-result-prefixes="rdf rss dc">

  <xsl:template match="/">
    <xsl:apply-templates select="rdf:RDF"/>
  </xsl:template>

  <xsl:template match="rdf:RDF">
    <html xml:lang="ja" lang="ja">
      <head>
        <title><xsl:value-of select="rss:channel/rss:title"/>新着情報</title>
        <style type="text/css">
          ul {margin-left:1.5em}
          li {margin-bottom:0.5em; list-style-type : square;}
          hr {color: #dddddd; height: 3px;}
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="rss:channel/rss:title"/>新着情報</h1>
        <xsl:value-of select="rss:channel/rss:description"/>
        <hr/>
        <ul><xsl:apply-templates select="rss:item"/></ul>
        <hr/>
        <a href="{rss:channel/rss:link}">TOP</a>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="rss:item">
    <li><a href="{rss:link}"><xsl:value-of select="rss:title"/></a> (<xsl:value-of select="dc:date"/>)<br/><xsl:value-of select="rss:description"/></li>
  </xsl:template>

</xsl:stylesheet>
