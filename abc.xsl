<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
<html>
<head><title>Books</title>
<style>
body { 
    background: lightblue url("images/123.jpg") no-repeat fixed center; 
}
.fixed-header, .fixed-footer{
    width: 100%;
    position: fixed;        
    background: #333;
    padding: 10px 0px;
    color: #fff;
}
.fixed-header{
    top: 0;
}
.fixed-footer{
    bottom: 0;
}
nav a{
    color: #fff;
    text-decoration: none;
    padding: 7px 90px;
    display: inline-block;
}

</style>
</head>
<body >
	<div align="center" class="fixed-header">
        <div class="container">
            <nav>
                <a href="index.html">Home</a>
                <a href="signup.html">Sign Up</a>
                <a href="shoppingcart/index.html">Products</a>
                <a href="allservices.html">Services</a>
                <a href="#cont_section">Contact Us</a>
            </nav>
        </div>
    </div>
  <div align="center"  style="margin-left:20%;margin-right:20%;margin-top:10%;">
  <h1>FULL LIST</h1>
<table width="100%" border="1">
  <THEAD>
           <TR>
                <TD width="35%"><B>Name</B></TD>
                <TD width="15%"><B>Category</B></TD>
                <TD width="10%"><B>Location</B></TD>
                <TD width="10%"><B>Followers</B></TD>
          </TR>
   </THEAD> 
  <TBODY>
             <xsl:for-each select="books/book">
             <TR> 
                  <TD width="35%"><xsl:value-of select="name" /></TD>   
                  <TD width="15%"><xsl:value-of select="category" /></TD> 
                  <TD width="10%"><xsl:value-of select="location" /></TD>
                  <TD width="10%"><xsl:value-of select="followers" /></TD>
            </TR>
            </xsl:for-each>
  </TBODY>
</table>
</div>

</body>
</html>
</xsl:template>
</xsl:stylesheet>