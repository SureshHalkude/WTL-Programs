<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/students">
        <university>
            <xsl:apply-templates select="student"/>
        </university>
    </xsl:template>

    <xsl:template match="student">
        <record>
            <studentId><xsl:value-of select="id"/></studentId>
            <fullName><xsl:value-of select="name"/></fullName>
            <details>
                <xsl:attribute name="age">
                    <xsl:value-of select="age"/>
                </xsl:attribute>
                <xsl:attribute name="gender">
                    <xsl:value-of select="gender"/>
                </xsl:attribute>
                <xsl:attribute name="course">
                    <xsl:value-of select="course"/>
                </xsl:attribute>
            </details>
            <result><xsl:value-of select="grade"/></result>
        </record>
    </xsl:template>

</xsl:stylesheet>
