<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:text>Student Details:\n\n</xsl:text>
        <xsl:apply-templates select="students/student"/>
    </xsl:template>
    
    <xsl:template match="student">
        <xsl:text>ID: </xsl:text><xsl:value-of select="id"/><xsl:text>\n</xsl:text>
        <xsl:text>Name: </xsl:text><xsl:value-of select="name"/><xsl:text>\n</xsl:text>
        <xsl:text>Age: </xsl:text><xsl:value-of select="age"/><xsl:text>\n</xsl:text>
        <xsl:text>Gender: </xsl:text><xsl:value-of select="gender"/><xsl:text>\n</xsl:text>
        <xsl:text>Course: </xsl:text><xsl:value-of select="course"/><xsl:text>\n</xsl:text>
        <xsl:text>Grade: </xsl:text><xsl:value-of select="grade"/><xsl:text>\n</xsl:text>
        <xsl:text>----------------------\n</xsl:text>
    </xsl:template>
</xsl:stylesheet>
