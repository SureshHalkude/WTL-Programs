<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Book Catalog</title>
                <style>
                    table { border-collapse: collapse; width: 50%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                </style>
            </head>
            <body>
                <h2>Book Catalog</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="catalog/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
