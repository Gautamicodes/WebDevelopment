<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<body>

<h2 style="text-align:center;">Top Scorers (Above 90)</h2>
<p style="text-align:center;"><b>Gautami Upadhye | Roll No: 99</b></p>

<table border="1" style="margin:auto;">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Subject</th>
    <th>Score</th>
  </tr>

  <xsl:for-each select="results/candidate">
    <tr>
      <td><xsl:value-of select="@id"/></td>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="subject"/></td>
      <td><xsl:value-of select="score"/></td>
    </tr>
  </xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>