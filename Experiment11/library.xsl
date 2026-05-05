<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/library">

<html>
<head>
<title>Library</title>

<style>
body {
    font-family: Arial;
    background: #f2f2f2;
}

.container {
    width: 700px;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
}

.book {
    border: 1px solid gray;
    margin: 10px 0;
    padding: 10px;
}
</style>

</head>

<body>

<div class="container">

<h1><xsl:value-of select="header"/></h1>

<h3>Student Info</h3>
<p>Name: <xsl:value-of select="student/name"/></p>
<p>Roll No: <xsl:value-of select="student/rollno"/></p>

<h3>Books</h3>

<xsl:for-each select="book">
    <div class="book">
        <b><xsl:value-of select="name"/></b><br/>
        Author: <xsl:value-of select="writer"/><br/>
        Price: ₹<xsl:value-of select="cost"/>
    </div>
</xsl:for-each>

</div>

</body>
</html>

</xsl:template>
</xsl:stylesheet>