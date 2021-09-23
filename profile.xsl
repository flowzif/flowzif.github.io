<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
>

<xsl:template match="foaf:Person">
  <html>
  <body>
  <h2>My Profile</h2>
  <h3><xsl:value-of select="foaf:name"/></h3>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 