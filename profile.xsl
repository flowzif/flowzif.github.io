<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
>

<xsl:template match="foaf:Person">
  <html>
  <body>
  <h2>Mon Profil</h2>
  <h3>Name : <xsl:value-of select="foaf:name"/></h3>
  <h3>Description : <xsl:value-of select="dc:description"/></h3>
  <h3> Links : </h3>
  <ul> 
    <xsl:for-each select="foaf:account">
      <li><xsl:value-of select="foaf:OnlineAccount/foaf:name"/> : <a href="#"><xsl:value-of select="foaf:OnlineAccount/foaf:page/@rdf:resource"/></a>
      </li>
    </xsl:for-each>
  </ul>    
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 