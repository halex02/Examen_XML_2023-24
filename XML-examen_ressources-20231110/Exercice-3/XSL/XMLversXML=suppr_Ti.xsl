<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	exclude-result-prefixes="xs xd"
	version="2.0">
	<xd:doc scope="stylesheet">
		<xd:desc>
			<xd:p><xd:b>Created on:</xd:b> Jan 22, 2016</xd:p>
			<xd:p><xd:b>Author:</xd:b> Gasiglia</xd:p>
			<xd:p><xd:b>Modification:</xd:b> Julien Lemaire le 26/10/23</xd:p>
		</xd:desc>
	</xd:doc>

	<xsl:template match="T | T0 | T1 | T2 | T3 | T4 | T5 | T6 | T7 | T26 | T36 | T31 | T21 | P4 | T44 | T32 | T28 | T18 | T19 | T22 | T11 | T13 | T30 | T12 | T29 | T10 | T41 | T46 | T49 | T10 | T12 | T13 | T14 | T15"><xsl:apply-templates/></xsl:template>

	<xsl:template match="*">
		<xsl:element name="{local-name()}">
			<xsl:for-each select="@*">
				<xsl:attribute name="{local-name()}">
					<xsl:value-of select="."/>
				</xsl:attribute>
			</xsl:for-each>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Normal | Text_20_body">
		<xsl:element name="p">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Police_20_par_20_défaut">
		<xsl:apply-templates/>
	</xsl:template>

</xsl:stylesheet>