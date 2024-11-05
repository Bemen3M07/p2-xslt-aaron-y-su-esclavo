<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Game Information</title>
                <style>
                    body { font-family: Arial, sans-serif; color: #333; }
                    h1, h2, h3 { color: #003366; }
                    .section { margin: 20px 0; }
                    .character, .ability { margin: 10px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f9f9f9; }
                    .character h3, .ability h3 { margin: 0; color: #003366; }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="Game/Title" /></h1>
                <p><strong>Desarrollador:</strong> <xsl:value-of select="Game/Developer" /></p>
                <p><strong>Descripción:</strong> <xsl:value-of select="Game/Description" /></p>
                <p><strong>Fecha de Lanzamiento:</strong> <xsl:value-of select="Game/ReleaseDate" /></p>

                <!-- Platforms -->
                <div class="section">
                    <h2>Plataformas</h2>
                    <ul>
                        <xsl:for-each select="Game/Platforms/Platform">
                            <li><xsl:value-of select="." /></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <!-- Genres -->
                <div class="section">
                    <h2>Géneros</h2>
                    <ul>
                        <xsl:for-each select="Game/Genres/Genre">
                            <li><xsl:value-of select="." /></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <!-- Characters -->
                <div class="section">
                    <h2>Personajes</h2>
                    <xsl:for-each select="Game/Characters/Character">
                        <div class="character">
                            <h3><xsl:value-of select="Name" /></h3>
                            <p><strong>Descripción:</strong> <xsl:value-of select="Description" /></p>
                            <p><strong>Arma Inicial:</strong> <xsl:value-of select="StartingWeapon" /></p>
                        </div>
                    </xsl:for-each>
                </div>

                <!-- Abilities -->
                <div class="section">
                    <h2>Habilidades</h2>
                    <xsl:for-each select="Game/Abilities/Ability">
                        <div class="ability">
                            <h3><xsl:value-of select="Name" /></h3>
                            <p><strong>Descripción:</strong> <xsl:value-of select="Description" /></p>
                            <p><strong>Efecto:</strong> <xsl:value-of select="Effect" /></p>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
