<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Game Information</title>
                <style>
                    body { font-family: Arial, sans-serif; color: #333; background-color: #f14747 }
                    h1, h2, h3 { color: #f1e247; }
                    .section { margin: 20px 0; }
                    .character, .ability { margin: 10px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f9f9f9; }
                    .character h3, .ability h3 { margin: 0; color: #003366; }
                    #footer-content {
    max-width: 1200px; /* Ancho máximo para evitar que el contenido se expanda demasiado */
    margin: 0 auto; /* Centrar el contenido */
    display: flex; /* Flexbox para organizar el contenido en una fila */
    justify-content: space-between; /* Separar el texto y redes sociales */
    align-items: center; /* Alinear verticalmente en el centro */
}
#site-footer {
    background-color: #b3d8f1; /* Color de fondo */
    padding: 2% 0; /* Espacio interno en porcentaje */
    text-align: center; /* Texto centrado */
    font-family: Arial, sans-serif; /* Tipografía */
    color: #fff; /* Color del texto */
}

#footer-info p {
    margin: 1% 0; /* Margen pequeño en porcentaje */
    color: #000000; /* Color del texto */
}

#footer-info a {
    color: #000000; /* Color de los enlaces */
    text-decoration: none; /* Sin subrayado en los enlaces */
    margin: 0 2%; /* Espacio entre enlaces en porcentaje */
}

#footer-info a:hover {
    text-decoration: underline; /* Subrayado al pasar el ratón */
}

#footer-social a img {
    width: 5%; /* Tamaño de los íconos en porcentaje */
    max-width: 24px; /* Tamaño máximo de íconos para evitar que crezcan demasiado */
    height: auto; /* Mantener proporción */
}
   /* Estilos del header */
    #header {
        background-color: #000; /* Color de fondo negro */
       
        padding: 2% 0; /* Espacio interno en porcentaje */
        text-align: center; /* Centra el contenido */
        font-family: Arial, sans-serif; /* Tipografía */
    }

    #header h1 {
         color: #ffff; /* Color de texto blanco */
        font-size: 2em; /* Tamaño de fuente escalable */
        margin: 0; /* Eliminar margen superior e inferior */
    }
                </style>
            </head>
            <body>
            <header id="header">
            <h1>VAMPIRE SURVIVORS</h1>
            </header>
             <img src="bannervampire.png" alt="banner vampire survivors">
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
<footer id="site-footer">
    <div id="footer-content">
        <!-- Información legal -->
        <div id="footer-info">
            <p> 2024 FPS Games. Todos los derechos reservados.</p>
            <p><a href="#">Política de Privacidad</a> | <a href="#">Términos y Condiciones</a></p>
        </div>

      
    </div>
  </footer>
            </body>
          
        </html>
    </xsl:template>
</xsl:stylesheet>
