<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
<title>Experiment 12</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(to right, #e3f2fd, #ffffff);
}

/* EXP BOX */
.exp-box {
    width: 80%;
    margin: 20px auto;
    background: #1565c0;
    color: white;
    padding: 15px;
    border-radius: 10px;
    text-align: center;
}

/* TABLE */
table {
    border-collapse: collapse;
    width: 80%;
    margin: auto;
    background: white;
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

th {
    background: #1565c0;
    color: white;
    padding: 10px;
}

td {
    padding: 10px;
    text-align: center;
}

tr:nth-child(even) {
    background: #f2f2f2;
}

tr:hover {
    background: #d1ecff;
}
</style>

</head>

<body>

<!-- 🔵 EXP INFO -->
<div class="exp-box">
    <h2>Experiment 12</h2>
    <p><b>Aim:</b> Display XML data using XSLT</p>
    <p>
        Name: <xsl:value-of select="library/student/name"/> |
        Roll No: <xsl:value-of select="library/student/rollno"/> |
        Batch: <xsl:value-of select="library/student/batch"/>
    </p>
</div>

<h2 style="text-align:center;">📚 Library Book Details</h2>

<table border="1">
<tr>
    <th>Title</th>
    <th>Author</th>
    <th>Country</th>
    <th>Year</th>
    <th>Price</th>
</tr>

<!-- SORT BY PRICE -->
<xsl:for-each select="library/book">
    <xsl:sort select="price" data-type="number"/>

<tr>
    <td><xsl:value-of select="title"/></td>
    <td><xsl:value-of select="author"/></td>
    <td><xsl:value-of select="country"/></td>
    <td><xsl:value-of select="year"/></td>
    <td>₹<xsl:value-of select="price"/></td>
</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>