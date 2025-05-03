<?xml version="1.0" encoding="UTF-8"?>
<!--
  Scenario 4: Show all real estate-related services and their available dates.
  This helps tenants or owners schedule things like inspections or repairs.
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Available Home Services</title>
        <style>
          body { font-family: sans-serif; margin: 20px; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #bbb; padding: 8px; }
          th { background-color: #e9e9e9; }
          ul { padding-left: 20px; margin: 0; }
        </style>
      </head>
      <body>
        <h2>Available Maintenance and Inspection Services</h2>

        <table>
          <tr>
            <th>Service ID</th>
            <th>Type</th>
            <th>Provider</th>
            <th>Contact</th>
            <th>Available Dates</th>
          </tr>

          <xsl:for-each select="RealEstatePlatform/Services/Service">
            <tr>
              <td><xsl:value-of select="ServiceID"/></td>
              <td><xsl:value-of select="Type"/></td>
              <td><xsl:value-of select="ProviderName"/></td>
              <td><xsl:value-of select="Contact"/></td>
              <td>
                <ul>
                  <xsl:for-each select="AvailableDates/Date">
                    <li><xsl:value-of select="."/></li>
                  </xsl:for-each>
                </ul>
              </td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
