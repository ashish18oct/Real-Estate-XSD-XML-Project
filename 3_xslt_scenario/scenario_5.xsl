<?xml version="1.0" encoding="UTF-8"?>
<!--
  Scenario 5: Show agents and the properties they manage.
  Grouped output using agent ID and property references.
-->

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:key name="agent-properties" match="Property" use="AgentID"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Agents and Their Properties</title>
        <style>
          body { font-family: sans-serif; margin: 20px; }
          h2 { color: #2c3e50; margin-top: 30px; }
          table { border-collapse: collapse; width: 100%; margin-bottom: 20px; }
          th, td { border: 1px solid #ccc; padding: 8px; }
          th { background-color: #f4f4f4; }
        </style>
      </head>
      <body>
        <h1>Properties Managed by Agents</h1>

        <!-- Loop over each agent -->
        <xsl:for-each select="RealEstatePlatform/Users/User[Role='Agent']">
          <xsl:variable name="agentId" select="UserID"/>
          <h2><xsl:value-of select="Name"/></h2>
          <p><strong>Email:</strong> <xsl:value-of select="Email"/></p>

          <table>
            <tr>
              <th>Property ID</th>
              <th>Type</th>
              <th>Location</th>
              <th>Status</th>
            </tr>

            <!-- Lookup all properties managed by this agent -->
            <xsl:for-each select="/RealEstatePlatform/Properties/Property[AgentID = $agentId]">
              <tr>
                <td><xsl:value-of select="PropertyID"/></td>
                <td><xsl:value-of select="Type"/></td>
                <td><xsl:value-of select="Location"/></td>
                <td><xsl:value-of select="Status"/></td>
              </tr>
            </xsl:for-each>
          </table>
        </xsl:for-each>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
