<?xml version="1.0" encoding="UTF-8"?>
<!--
  Scenario 7: Transform property data from XML to JSON format.
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text" indent="no"/>

  <xsl:template match="/">
    <xsl:text>{ "properties": [</xsl:text>

    <xsl:for-each select="RealEstatePlatform/Properties/Property">
      <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="PropertyID"/><xsl:text>", </xsl:text>
        <xsl:text>"type": "</xsl:text><xsl:value-of select="Type"/><xsl:text>", </xsl:text>
        <xsl:text>"location": "</xsl:text><xsl:value-of select="Location"/><xsl:text>", </xsl:text>
        <xsl:text>"price": </xsl:text><xsl:value-of select="Price"/><xsl:text>, </xsl:text>
        <xsl:text>"status": "</xsl:text><xsl:value-of select="Status"/><xsl:text>"</xsl:text>
      <xsl:text>}</xsl:text>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>

    <xsl:text>] }</xsl:text>
  </xsl:template>
</xsl:stylesheet>
