<?xml version="1.0" encoding="UTF-8"?>
<!--
  Scenario 2: Display all property visit bookings.
  Each row shows Booking ID, User Name, Property Location, Date and Time.
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Property Visit Bookings</title>
        <style>
          body { font-family: sans-serif; margin: 20px; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #ccc; padding: 8px; }
          th { background-color: #f2f2f2; }
        </style>
      </head>
      <body>
        <h2>Property Visit Bookings</h2>

        <table>
          <tr>
            <th>Booking ID</th>
            <th>User Name</th>
            <th>Property Location</th>
            <th>Date</th>
            <th>Time</th>
          </tr>

          <!-- Loop through each booking -->
          <xsl:for-each select="RealEstatePlatform/Bookings/Booking">
            <tr>
              <td><xsl:value-of select="BookingID"/></td>

              <!-- Lookup user name by UserID -->
              <td>
                <xsl:value-of select="/RealEstatePlatform/Users/User[UserID = current()/UserID]/Name"/>
              </td>

              <!-- Lookup property location by PropertyID -->
              <td>
                <xsl:value-of select="/RealEstatePlatform/Properties/Property[PropertyID = current()/PropertyID]/Location"/>
              </td>

              <td><xsl:value-of select="Date"/></td>
              <td><xsl:value-of select="Time"/></td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
