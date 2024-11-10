<?xml version="1.0" encoding="UTF-8"?>
<!-- Declaración de XML que indica que este es un archivo XSLT que transformará el XML en HTML. La codificación utilizada es UTF-8. -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Definición del espacio de nombres XSLT y la versión (1.0). Esto permite usar las funcionalidades de transformación XML en HTML. -->

    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <!-- Indica que el resultado de la transformación debe ser HTML, con codificación UTF-8 y con sangrías para hacer el código más legible. -->

    <!-- Plantilla principal que se aplica al nodo raíz del documento XML. -->
    <xsl:template match="/">
        <html>
            <!-- Comienza el documento HTML que será generado. -->
            <head>
                <title>Game Information</title>
                <!-- El título de la página HTML, que será mostrado en la pestaña del navegador. -->
                <style>
                    /* Aquí empieza la definición de estilos CSS para la presentación de la página. */
                    body { font-family: Arial, sans-serif; color: #ffffff; background-color: #f14747; margin: 0; padding: 0; }
                    h1, h2, h3 { color: #f1e247; margin: 0; padding: 10px 0; }
                    .section { margin: 10px 0; padding: 0 10px; }
                    .character { margin: 5px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; color: #000; background-color: #ffffff; }
                    .ability { margin: 5px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #f9f9f9; color: #000; }
                    .character h3, .ability h3 { margin: 0; color: #003366; }
                    .character img, .ability img { max-width: 100px; height: auto; margin-top: 10px; }
                    .form-section { margin: 20px; padding: 15px; border: 1px solid #ccc; border-radius: 5px; background-color: #ffffff; color: #000; }
                    .form-section label, .form-section input, .form-section textarea, .form-section button {
                        display: block; width: 100%; margin-bottom: 10px; font-family: inherit;
                    }
                    .form-section input, .form-section textarea {
                        padding: 8px; border: 1px solid #ccc; border-radius: 4px;
                    }
                    .form-section textarea { height: 80px; }
                    .form-section button {
                        padding: 10px 15px; background-color: #003366; color: #ffffff; border: none; border-radius: 5px; cursor: pointer;
                    }
                    .form-section button:hover { background-color: #002244; }
                     footer { background-color: yellow; padding: 2% 5%; text-align: center; color: black; }
                    .footer-content { display: flex; flex-direction: column; align-items: center; }

                    .
                    .footer-content div { margin: 1% 0; }
                    .image-container { text-align: center; margin: 10px 0; }
                    .image-container img { max-width: 100%; height: auto; border: 2px solid #ccc; border-radius: 5px; }
                    #header { background-color: #000; padding: 1% 0; text-align: center; font-family: Arial, sans-serif; }
                    #header h1 { color: #ffffff; font-size: 2em; margin: 0; }
                    /* Fin de los estilos CSS. */
                </style>
            </head>
            <body>
                <header id="header">
                    <h1>VAMPIRE SURVIVORS</h1>
                    <!-- Título de la página en la parte superior de la web. -->
                    <div style="margin-top: 10px;">
                        <a href="vampiresurvivors.xml" style="margin-right: 10px; padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Página Principal</a>
                        <a href="formulario.xml" style="padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Formulario</a>
                    </div>
                    <!-- Botones para navegar entre la página principal y el formulario. -->
                </header>

                <!-- Imagen principal -->
                <div class="image-container">
                    <xsl:if test="Game/Imagenes/Imagen/@image">
                        <img src="{Game/Imagenes/Imagen/@image}" alt="{Game/Imagenes/Imagen/@name}" />
                    </xsl:if>
                    <!-- Si existe una imagen en el nodo "Imagenes", se mostrará en la página. -->
                </div>

                <!-- Información general del juego -->
                <div class="section">
                    <h1><xsl:value-of select="Game/Title" /></h1>
                    <!-- Muestra el título del juego. -->
                    <p><strong>Desarrollador:</strong> <xsl:value-of select="Game/Developer" /></p>
                    <!-- Muestra el nombre del desarrollador. -->
                    <p><strong>Descripción:</strong> <xsl:value-of select="Game/Description" /></p>
                    <!-- Muestra la descripción del juego. -->
                    <p><strong>Fecha de Lanzamiento:</strong> <xsl:value-of select="Game/ReleaseDate" /></p>
                    <!-- Muestra la fecha de lanzamiento del juego. -->
                </div>

                <!-- Plataformas -->
                <div class="section">
                    <h2>Plataformas</h2>
                    <ul>
                        <xsl:for-each select="Game/Platforms/Platform">
                            <!-- Itera sobre todas las plataformas en las que el juego está disponible. -->
                            <li><xsl:value-of select="." /></li>
                            <!-- Muestra cada plataforma en un ítem de lista. -->
                        </xsl:for-each>
                    </ul>
                </div>

                <!-- Géneros -->
                <div class="section">
                    <h2>Géneros</h2>
                    <ul>
                        <xsl:for-each select="Game/Genres/Genre">
                            <!-- Itera sobre los géneros del juego. -->
                            <li><xsl:value-of select="." /></li>
                            <!-- Muestra cada género en un ítem de lista. -->
                        </xsl:for-each>
                    </ul>
                </div>

                <!-- Personajes -->
                <div class="section">
                    <h2>Personajes</h2>
                    <xsl:for-each select="Game/Characters/Character">
                        <!-- Itera sobre cada personaje del juego. -->
                        <div class="character">
                            <h3><xsl:value-of select="Name" /></h3>
                            <!-- Muestra el nombre del personaje. -->
                            <p><strong>Descripción:</strong> <xsl:value-of select="Description" /></p>
                            <!-- Muestra la descripción del personaje. -->
                            <p><strong>Arma Inicial:</strong> <xsl:value-of select="StartingWeapon" /></p>
                            <!-- Muestra el arma inicial del personaje. -->
                            <xsl:if test="Imagen/@image">
                                <img src="{Imagen/@image}" alt="{Imagen/@name}" />
                            </xsl:if>
                            <!-- Si el personaje tiene una imagen, la muestra. -->
                        </div>
                    </xsl:for-each>
                </div>

                <!-- Habilidades -->
                <div class="section">
                    <h2>Habilidades</h2>
                    <xsl:for-each select="Game/Abilities/Ability">
                        <!-- Itera sobre las habilidades disponibles en el juego. -->
                        <div class="ability">
                            <h3><xsl:value-of select="Name" /></h3>
                            <!-- Muestra el nombre de la habilidad. -->
                            <p><strong>Descripción:</strong> <xsl:value-of select="Description" /></p>
                            <!-- Muestra la descripción de la habilidad. -->
                            <p><strong>Efecto:</strong> <xsl:value-of select="Effect" /></p>
                            <!-- Muestra el efecto de la habilidad. -->
                            <xsl:if test="Imagen/@image">
                                <img src="{Imagen/@image}" alt="{Imagen/@name}" />
                            </xsl:if>
                            <!-- Si la habilidad tiene una imagen, la muestra. -->
                        </div>
                    </xsl:for-each>
                </div>

                <!-- Footer -->
                <footer id="footer-content">
                  
                            <p>2024 VAMPIRE SURVIVORS. Todos los derechos reservados.</p>
                            <p><a href="#">Política de Privacidad</a> | <a href="#">Términos y Condiciones</a></p>
                            <!-- Muestra la información del pie de página, incluyendo el aviso de derechos reservados y enlaces a políticas. -->
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
