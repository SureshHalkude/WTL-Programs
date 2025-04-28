<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
        <title>Group Project Members</title>
                <style>
                    table { width: 100%%; border-collapse: collapse; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
        </head>
        <body>
            <h2>Group Project Members</h2>
            <table>
                    <tr>
                        <th>Name</th>
                        <th>Role</th>
                        <th>Specialization</th>
                        <th>Email</th>
                        <th>Contact</th>
                    </tr>
                <xsl:for-each select="group_project/member">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="role"/></td>
                            <td><xsl:value-of select="specialization"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="contact"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
