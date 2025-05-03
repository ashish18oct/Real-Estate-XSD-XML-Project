<?xml version="1.0" encoding="UTF-8"?>
<!--
  Scenario 6: Transform internal property structure to external listing format.
  This could be used to export to a 3rd-party real estate platform.
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <ExternalListings>
      <xsl:for-each select="RealEstatePlatform/Properties/Property">
        <Listing>
          <ID><xsl:value-of select="PropertyID"/></ID>
          <Category><xsl:value-of select="Type"/></Category>
          <Address><xsl:value-of select="Location"/></Address>
          <Value><xsl:value-of select="Price"/></Value>
          <ListingStatus><xsl:value-of select="Status"/></ListingStatus>
        </Listing>
      </xsl:for-each>
    </ExternalListings>
  </xsl:template>

</xsl:stylesheet>
