<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Game Information</title>
                <style>
                    body { font-family: Arial, sans-serif; color: #ffffff; background-color: #f14747; margin: 0; padding: 0; }
                    h1, h2, h3 { color: #f1e247; margin: 0; padding: 10px 0; }
                    .section { margin: 10px 0; padding: 0 10px; }
                    .character { margin: 5px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; color: #000; background-color: #ffffff; }
                    .ability { margin: 5px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f9f9f9; color: #000;}
                    .character h3, .ability h3 { margin: 0; color: #003366; }
                    .character img { max-width: 100px; height: auto; margin-top: 10px; }
                    #footer-content { max-width: 1200px; margin: 0 auto; display: flex; justify-content: space-between; align-items: center; }
                    #site-footer { background-color: #b3d8f1; padding: 1% 0; text-align: center; font-family: Arial, sans-serif; color: #000; }
                    #footer-info p { margin: 0; padding: 5px 0; color: #000000; }
                    #footer-info a { color: #000000; text-decoration: none; margin: 0 2%; }
                    #footer-info a:hover { text-decoration: underline; }
                    .image-container { text-align: center; margin: 10px 0; }
                    .image-container img { max-width: 10%; height: auto; border: 2px solid #ccc; border-radius: 5px; }
                    #header { background-color: #000; padding: 1% 0; text-align: center; font-family: Arial, sans-serif; }
                    #header h1 { color: #ffffff; font-size: 2em; margin: 0; }
                </style>
            </head>
            <body>
                <header id="header">
                    <h1>VAMPIRE SURVIVORS</h1>
                </header>
                
                <!-- Imagen principal -->
                <div class="image-container">
                    <xsl:if test="Game/Imagenes/Imagen/@image">
                        <img src="{Game/Imagenes/Imagen/@image}" alt="{Game/Imagenes/Imagen/@name}" />
                    </xsl:if>
                </div>
                
                <!-- Información general del juego -->
                <div class="section">
                    <h1><xsl:value-of select="Game/Title" /></h1>
                    <p><strong>Desarrollador:</strong> <xsl:value-of select="Game/Developer" /></p>
                    <p><strong>Descripción:</strong> <xsl:value-of select="Game/Description" /></p>
                    <p><strong>Fecha de Lanzamiento:</strong> <xsl:value-of select="Game/ReleaseDate" /></p>
                </div>

                <!-- Plataformas -->
                <div class="section">
                    <h2>Plataformas</h2>
                    <ul>
                        <xsl:for-each select="Game/Platforms/Platform">
                            <li><xsl:value-of select="." /></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <!-- Géneros -->
                <div class="section">
                    <h2>Géneros</h2>
                    <ul>
                        <xsl:for-each select="Game/Genres/Genre">
                            <li><xsl:value-of select="." /></li>
                        </xsl:for-each>
                    </ul>
                </div>

                <!-- Personajes -->
                <div class="section">
                    <h2>Personajes</h2>
                    <xsl:for-each select="Game/Characters/Character">
                        <div class="character">
                            <h3><xsl:value-of select="Name" /></h3>
                            <p><strong>Descripción:</strong> <xsl:value-of select="Description" /></p>
                            <p><strong>Arma Inicial:</strong> <xsl:value-of select="StartingWeapon" /></p>
                            <xsl:if test="Imagen/@image">
                                <img src="{Imagen/@image}" alt="{Imagen/@name}" />
                            </xsl:if>
                        </div>
                    </xsl:for-each>
                </div>

                <!-- Habilidades -->
                <div class="section">
                    <h2>Habilidades</h2>
                    <xsl:for-each select="Game/Abilities/Ability">
                        <div class="ability">
                            <h3><xsl:value-of select="Name" /></h3>
                            <p><strong>Descripción:</strong> <xsl:value-of select="Description" /></p>
                            <p><strong>Efecto:</strong> <xsl:value-of select="Effect" /></p>
                            <xsl:if test="Imagen/@image">
                                <img src="{Imagen/@image}" alt="{Imagen/@name}" />
                            </xsl:if>
                        </div>
                    </xsl:for-each>
                </div>

                <!-- Footer -->
                <footer id="site-footer">
                    <div id="footer-content">
                        <div id="footer-info">
                            <p>2024 FPS Games. Todos los derechos reservados.</p>
                            <p><a href="#">Política de Privacidad</a> | <a href="#">Términos y Condiciones</a></p>
                        </div>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
