<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
<style>

/* BACKGROUND */
body {
    font-family: Poppins, Arial;
    background: linear-gradient(135deg, #ff9a9e, #fad0c4);
    margin: 0;
    padding: 20px;
}

/* HEADER CARD */
.header {
    text-align: center;
    background: linear-gradient(135deg, #667eea, #764ba2);
    color: white;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.2);
}

/* TABLE */
table {
    margin: 30px auto;
    border-collapse: collapse;
    width: 80%;
    background: white;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

/* HEADER */
th {
    background: #ff4d6d;
    color: white;
    padding: 12px;
}

/* CELLS */
td {
    padding: 12px;
    text-align: center;
    transition: 0.3s;
}

/* ROW HOVER EFFECT */
tr:hover {
    background: #ffe3ec;
    transform: scale(1.02);
    transition: 0.3s;
}

/* SCORE BADGE */
.badge {
    background: #28a745;
    color: white;
    padding: 5px 10px;
    border-radius: 20px;
    font-weight: bold;
}

</style>
</head>

<body>

<div class="header">
    <h1>📊 Experiment 13</h1>
    <p><b>Aim:</b> Implementation of Student Application using XSLT with Conditional Statement</p>
    <p><b>Gautami Upadhye</b> | Roll No: 99 | Batch S4</p>
</div>

<h2 style="text-align:center; margin-top:20px;">🏆 Top Scorers (Above 90)</h2>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Subject</th>
    <th>Score</th>
</tr>

<!-- CONDITIONAL FILTER -->
<xsl:for-each select="results/candidate[score &gt; 90]">

<tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="subject"/></td>
    <td>
        <span class="badge">
            <xsl:value-of select="score"/>
        </span>
    </td>
</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>