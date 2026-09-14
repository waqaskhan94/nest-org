<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
    <head>
      <meta charset="UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>Sitemap | N.E.S.T</title>
      <link rel="icon" type="image/png" sizes="288x288" href="/favicon.png"/>
      <link rel="shortcut icon" href="/favicon.png"/>
      <style>
        body{font-family:-apple-system,Segoe UI,Roboto,Arial,sans-serif;color:#1a1a2e;background:#f6fafb;margin:0;padding:0}
        .wrap{max-width:960px;margin:0 auto;padding:2rem 1.25rem}
        .head{display:flex;align-items:center;gap:12px;margin-bottom:0.5rem}
        .head img{width:46px;height:46px;border-radius:50%}
        h1{font-size:1.5rem;margin:0;color:#166178}
        .sub{color:#5a6a72;font-size:0.9rem;margin:0.25rem 0 1.5rem}
        table{width:100%;border-collapse:collapse;background:#fff;border-radius:12px;overflow:hidden;box-shadow:0 4px 18px rgba(22,97,120,0.07)}
        th{background:#166178;color:#fff;text-align:left;padding:0.7rem 1rem;font-size:0.82rem;letter-spacing:0.03em}
        td{padding:0.7rem 1rem;border-bottom:1px solid #eef3f4;font-size:0.9rem}
        tr:last-child td{border-bottom:none}
        a{color:#166178;text-decoration:none}
        a:hover{text-decoration:underline}
        .count{color:#5a6a72;font-size:0.85rem;margin-top:1rem}
      </style>
    </head>
    <body>
      <div class="wrap">
        <div class="head">
          <img src="/favicon.png" alt="NEST logo"/>
          <h1>N.E.S.T Sitemap</h1>
        </div>
        <p class="sub">All pages on nestislamabad.com, submitted to search engines.</p>
        <table>
          <tr><th>URL</th><th>Priority</th><th>Change frequency</th><th>Last modified</th></tr>
          <xsl:for-each select="s:urlset/s:url">
            <tr>
              <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
              <td><xsl:value-of select="s:priority"/></td>
              <td><xsl:value-of select="s:changefreq"/></td>
              <td><xsl:value-of select="s:lastmod"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <p class="count"><xsl:value-of select="count(s:urlset/s:url)"/> URLs</p>
      </div>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
