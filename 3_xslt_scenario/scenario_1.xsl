<?xml version="1.0" encoding="UTF-8"?>
<!-- Scenario 1: List all properties in a simple HTML table. -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Output HTML format -->
  <xsl:output method="html" indent="yes"/>

  <!-- Start from the root of the XML -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Property Listings</title>
        <style>
          body {
            font-family: sans-serif;
            margin: 20px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            padding: 8px;
            border: 1px solid #ddd;
          }
          th {
            background-color: #f0f0f0;
          }
        </style>
      </head>
      <body>
        <h2>Property Listings</h2>

        <table>
          <tr>
            <th>ID</th>
            <th>Type</th>
            <th>Location</th>
            <th>Price</th>
            <th>Status</th>
            <th>Owner</th>
            <th>Agent</th>
          </tr>

          <!-- Go through each property -->
          <xsl:for-each select="RealEstatePlatform/Properties/Property">
            <tr>
              <td><xsl:value-of select="PropertyID"/></td>
              <td><xsl:value-of select="Type"/></td>
              <td><xsl:value-of select="Location"/></td>
              <td><xsl:value-of select="Price"/></td>
              <td><xsl:value-of select="Status"/></td>
              <td><xsl:value-of select="OwnerID"/></td>
              <td><xsl:value-of select="AgentID"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
