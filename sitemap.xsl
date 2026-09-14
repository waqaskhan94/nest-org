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
        body{background:#1e1e1e;color:#d4d4d4;font-family:Consolas,Menlo,monospace;font-size:13px;line-height:1.5;margin:14px}
        .tag{color:#569cd6}
        .aname{color:#9cdcfe}
        .aval{color:#ce9178}
        .txt{color:#b5cea8}
        a{color:#b5cea8;text-decoration:none}
        a:hover{text-decoration:underline}
        .url{margin:0 0 2px 20px}
        .field{margin-left:40px}
        .comment{color:#6a9955}
      </style>
    </head>
    <body><div><span class="comment">&#60;?xml version="1.0" encoding="UTF-8"?&#62;</span><br/>
      <span class="tag">&#60;urlset</span> <span class="aname">xmlns</span>=<span class="aval">"http://www.sitemaps.org/schemas/sitemap/0.9"</span><span class="tag">&#62;</span><br/>
      <xsl:for-each select="s:urlset/s:url">
        <div class="url"><span class="tag">&#60;url&#62;</span></div>
        <div class="field"><span class="tag">&#60;loc&#62;</span><a href="{s:loc}"><xsl:value-of select="s:loc"/></a><span class="tag">&#60;/loc&#62;</span></div>
        <xsl:if test="s:lastmod"><div class="field"><span class="tag">&#60;lastmod&#62;</span><span class="txt"><xsl:value-of select="s:lastmod"/></span><span class="tag">&#60;/lastmod&#62;</span></div></xsl:if>
        <xsl:if test="s:changefreq"><div class="field"><span class="tag">&#60;changefreq&#62;</span><span class="txt"><xsl:value-of select="s:changefreq"/></span><span class="tag">&#60;/changefreq&#62;</span></div></xsl:if>
        <xsl:if test="s:priority"><div class="field"><span class="tag">&#60;priority&#62;</span><span class="txt"><xsl:value-of select="s:priority"/></span><span class="tag">&#60;/priority&#62;</span></div></xsl:if>
        <div class="url"><span class="tag">&#60;/url&#62;</span></div>
      </xsl:for-each>
      <span class="tag">&#60;/urlset&#62;</span></div>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
