<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
    <head>
      <meta charset="UTF-8"/>
      <title>Sitemap</title>
      <link rel="icon" type="image/png" sizes="288x288" href="/favicon.png"/>
      <link rel="shortcut icon" href="/favicon.png"/>
      <style>
        body{font-family:monospace;font-size:13px;color:#222;margin:16px}
        p{margin:0 0 8px}
        a{color:#0645ad}
      </style>
    </head>
    <body>
      <p>This XML sitemap contains <xsl:value-of select="count(s:urlset/s:url)"/> URLs.</p>
      <xsl:for-each select="s:urlset/s:url">
        <p><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></p>
      </xsl:for-each>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
