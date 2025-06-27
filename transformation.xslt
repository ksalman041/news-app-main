<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Output method as text because we're creating JSON -->
    <xsl:output method="text" encoding="UTF-8"/>

    <!-- Template for the root element -->
    <xsl:template match="/news">
        {
        "articles": [
        <xsl:apply-templates select="article"/>
        ]
        }
    </xsl:template>

    <!-- Template for each article element -->
    <xsl:template match="article">
        <xsl:if test="position() != 1">, </xsl:if>
        {
        "title": "<xsl:value-of select="title"/>",
        "image": {
        "src": "<xsl:value-of select="image/@src"/>",
        "alt": "<xsl:value-of select="image/@alt"/>"
        },
        "description": "<xsl:value-of select="normalize-space(description)"/>",
        "author": {
        "name": "<xsl:value-of select="author/@name"/>",
        "email": "<xsl:value-of select="author/@email"/>"
        },
        "date": "<xsl:value-of select="date"/>",
        "tags": [
        <xsl:for-each select="tags/tag">
            <xsl:if test="position() != 1">, </xsl:if>
            "<xsl:value-of select="."/>"
        </xsl:for-each>
        ],
        "relatedArticles": [
        <xsl:for-each select="relatedArticles/relatedArticle">
            <xsl:if test="position() != 1">, </xsl:if>
            {
            "url": "<xsl:value-of select="@url"/>",
            "description": "<xsl:value-of select="normalize-space(text())"/>"
            }
        </xsl:for-each>
        ],
        "comments": [
        <xsl:for-each select="comments/comment">
            <xsl:if test="position() != 1">, </xsl:if>
            "<xsl:value-of select="."/>"
        </xsl:for-each>
        ]
        }
    </xsl:template>

</xsl:stylesheet>
