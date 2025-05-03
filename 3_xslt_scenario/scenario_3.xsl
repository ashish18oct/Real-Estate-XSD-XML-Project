<?xml version="1.0" encoding="UTF-8"?>
<!--
  Scenario 3: Display all completed property transactions.
  Shows who bought what from whom, for how much, and when.
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Property Transactions</title>
        <style>
          body { font-family: sans-serif; margin: 20px; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #ccc; padding: 8px; }
          th { background-color: #eee; }
        </style>
      </head>
      <body>
        <h2>Completed Property Transactions</h2>

        <table>
          <tr>
            <th>Transaction ID</th>
            <th>Buyer</th>
            <th>Seller</th>
            <th>Property</th>
            <th>Amount (€)</th>
            <th>Date</th>
            <th>Status</th>
          </tr>

          <xsl:for-each select="RealEstatePlatform/Transactions/Transaction">
            <tr>
              <td><xsl:value-of select="TransactionID"/></td>

              <!-- Lookup Buyer Name -->
              <td>
                <xsl:value-of select="/RealEstatePlatform/Users/User[UserID = current()/BuyerID]/Name"/>
              </td>

              <!-- Lookup Seller Name -->
              <td>
                <xsl:value-of select="/RealEstatePlatform/Users/User[UserID = current()/SellerID]/Name"/>
              </td>

              <!-- Lookup Property Location -->
              <td>
                <xsl:value-of select="/RealEstatePlatform/Properties/Property[PropertyID = current()/PropertyID]/Location"/>
              </td>

              <td><xsl:value-of select="Amount"/></td>
              <td><xsl:value-of select="Date"/></td>
              <td><xsl:value-of select="Status"/></td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
