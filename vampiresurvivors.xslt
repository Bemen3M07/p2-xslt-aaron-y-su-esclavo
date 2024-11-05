<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="Game/Title" /></title>
            </head>
            <body>
                <h1><xsl:value-of select="Game/Title" /></h1>
                <h3>Desarrollador: <xsl:value-of select="Game/Developer" /></h3>
                <p><xsl:value-of select="Game/Description" /></p>
                <p>Fecha de lanzamiento: <xsl:value-of select="Game/ReleaseDate" /></p>

                <h2>Plataformas</h2>
                <ul>
                    <xsl:for-each select="Game/Platforms/Platform">
                        <li><xsl:value-of select="." /></li>
                    </xsl:for-each>
                </ul>

                <h2>Géneros</h2>
                <ul>
                    <xsl:for-each select="Game/Genres/Genre">
                        <li><xsl:value-of select="." /></li>
                    </xsl:for-each>
                </ul>

                <h2>Personajes</h2>
                <xsl:for-each select="Game/Characters/Character">
                    <div style="margin-bottom: 15px;">
                        <h3><xsl:value-of select="Name" /></h3>
                        <p><xsl:value-of select="Description" /></p>
                        <p>Arma inicial: <xsl:value-of select="StartingWeapon" /></p>
                    </div>
                </xsl:for-each>

                <h2>Habilidades</h2>
                <xsl:for-each select="Game/Abilities/Ability">
                    <div style="margin-bottom: 15px;">
                        <h3><xsl:value-of select="Name" /></h3>
                        <p><xsl:value-of select="Description" /></p>
                        <p>Efecto: <xsl:value-of select="Effect" /></p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="Game/Title" /></title>
            </head>
            <body>
                <h1><xsl:value-of select="Game/Title" /></h1>
                <h3>Desarrollador: <xsl:value-of select="Game/Developer" /></h3>
                <p><xsl:value-of select="Game/Description" /></p>
                <p>Fecha de lanzamiento: <xsl:value-of select="Game/ReleaseDate" /></p>

                <h2>Plataformas</h2>
                <ul>
                    <xsl:for-each select="Game/Platforms/Platform">
                        <li><xsl:value-of select="." /></li>
                    </xsl:for-each>
                </ul>

                <h2>Géneros</h2>
                <ul>
                    <xsl:for-each select="Game/Genres/Genre">
                        <li><xsl:value-of select="." /></li>
                    </xsl:for-each>
                </ul>

                <h2>Personajes</h2>
                <xsl:for-each select="Game/Characters/Character">
                    <div style="margin-bottom: 15px;">
                        <h3><xsl:value-of select="Name" /></h3>
                        <p><xsl:value-of select="Description" /></p>
                        <p>Arma inicial: <xsl:value-of select="StartingWeapon" /></p>
                    </div>
                </xsl:for-each>

                <h2>Habilidades</h2>
                <xsl:for-each select="Game/Abilities/Ability">
                    <div style="margin-bottom: 15px;">
                        <h3><xsl:value-of select="Name" /></h3>
                        <p><xsl:value-of select="Description" /></p>
                        <p>Efecto: <xsl:value-of select="Effect" /></p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
