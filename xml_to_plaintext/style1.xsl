<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Library Collection</title>
                <style>
                    body { font-family: Verdana, sans-serif; background-color: #fafafa; }
                    table { border-collapse: collapse; width: 75%; margin: 30px auto; }
                    th, td { border: 1px solid #555; padding: 10px; }
                    th { background-color: #e0e0e0; }
                    h2 { text-align: center; color: #333; }
                </style>
            </head>
            <body>
                <h2>Library Book List</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Price ($)</th>
                        <th>Publish Date</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="library/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="genre"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="publish_date"/></td>
                            <td><xsl:value-of select="description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
