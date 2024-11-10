<?xml version="1.0" encoding="UTF-8"?>
<!-- Declara que el archivo está en formato XML con codificación UTF-8 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Comienza el documento XSLT, que transforma un documento XML en HTML -->

    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <!-- Define que la salida será en formato HTML, con codificación UTF-8 y con indentación para mejorar la legibilidad del HTML generado -->

    <xsl:template match="/">
    <!-- Define la plantilla principal, que se aplica al nodo raíz del XML de entrada -->

        <html>
        <!-- Comienza el documento HTML -->
            <head>
                <title>Formulario de Contacto</title>
                <!-- Define el título de la página HTML -->
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f14747; color: #000; }
                    <!-- Estilos generales para el cuerpo de la página: fuente, color de fondo y color de texto -->
                   form {
    max-width: 900px;           /* Mayor ancho del formulario */
    width: 80%;                 /* El formulario ocupará el 80% del ancho de la pantalla */
    margin: 80px auto;          /* Más margen en la parte superior para centrar mejor */
    padding: 40px;              /* Más espacio interior (padding) para hacer el formulario más cómodo */
    border: 2px solid #ccc;     /* Borde más grueso y suave para darle más presencia */
    border-radius: 10px;        /* Bordes redondeados para un aspecto más suave */
    background-color: #fff;     /* Fondo blanco para que resalte sobre el fondo */
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Sombra suave para darle profundidad */
    display: flex;              /* Usamos Flexbox para que el contenido se acomode mejor */
    flex-direction: column;     /* Los elementos dentro del formulario se alinearán en columna */
    gap: 10px;                  /* Espaciado entre los elementos dentro del formulario */
}

                    <!-- Estilos para el formulario: centrado en la página, bordes redondeados y fondo blanco -->
                    label, input, textarea { display: block; margin-bottom: 10px; }
                    <!-- Los campos (etiquetas, inputs y textarea) se muestran en bloque, con un margen inferior de 10px -->
                    input[type="text"], input[type="email"], textarea { width: 100%; padding: 8px; }
                    <!-- Estilos específicos para inputs de tipo texto, correo y textarea: ancho 100% y algo de padding -->
                    input[type="submit"] { padding: 10px 15px; background-color: #007BFF; color: white; border: none; border-radius: 5px; cursor: pointer; }
                    <!-- Estilos para el botón de envío: color de fondo, texto blanco, sin bordes y con cursor tipo puntero -->
                    input[type="submit"]:hover { background-color: #0056b3; }
                    <!-- Cuando el usuario pasa el mouse por encima del botón, el fondo cambia de color -->
                     <!-- Estilo css para el header y footer-->
                       #header { background-color: #000; padding: 1% 0; text-align: center; font-family: Arial, sans-serif; }
                    #header h1 { color: #ffffff; font-size: 2em; margin: auto; }
                       footer { background-color: yellow; padding: 2% 5%; text-align: center; color: black; }
                    .footer-content { display: flex; flex-direction: column; align-items: center; }
                    .
                    .footer-content div { margin: 1% 0; }
                </style>
                <script>
                    function handleSubmit(event) {
                        event.preventDefault(); // Evita el envío por defecto del formulario
                        alert('El formulario se ha enviado correctamente.');
                    }
                    <!-- Función JavaScript para manejar el envío del formulario. Previenes el comportamiento por defecto y muestra un mensaje de éxito -->
                </script>
            </head>
            <body>
            <!-- Comienza el cuerpo de la página HTML -->
                 <header id="header">
                    <h1>VAMPIRE SURVIVORS</h1>
                    <!-- Título de la página en la parte superior de la web. -->
                    <div style="margin-top: 10px;">
                        <a href="vampiresurvivors.xml" style="margin-right: 10px; padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Página Principal</a>
                        <a href="formulario.xml" style="padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Formulario</a>
                    </div>
                    <!-- Botones para navegar entre la página principal y el formulario. -->
                </header>

                <!-- Formulario -->
                <form onsubmit="handleSubmit(event)">
                <!-- Comienza el formulario y asigna el evento onsubmit para evitar el envío y mostrar un mensaje -->
                    <xsl:for-each select="Formulario/Campo">
                    <!-- Itera sobre cada campo definido en el XML dentro del nodo <Formulario> -->

                        <label>
                            <xsl:value-of select="Label"/>
                        </label>
                        <!-- Muestra el texto del campo en una etiqueta <label> usando el valor de la etiqueta <Label> del XML -->

                        <xsl:choose>
                        <!-- Inicia una estructura condicional para elegir el tipo de campo -->
                            <xsl:when test="Tipo = 'text' or Tipo = 'email'">
                            <!-- Si el tipo del campo es 'text' o 'email' -->
                                <input type="{Tipo}" name="{Nombre}" required="{Requerido}" />
                                <!-- Crea un input del tipo correspondiente (text o email), y lo hace obligatorio si 'Requerido' es 'sí' -->
                            </xsl:when>
                            <xsl:when test="Tipo = 'textarea'">
                            <!-- Si el tipo del campo es 'textarea' -->
                                <textarea name="{Nombre}"></textarea>
                                <!-- Crea un área de texto (textarea) con el nombre del campo -->
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                    <!-- Fin de la iteración sobre los campos del formulario -->

                    <input type="submit" value="Enviar" />
                    <!-- Un botón de envío que aparece al final del formulario -->
                </form>
                  <footer id="footer-content">
                  
                            <p>2024 VAMPIRE SURVIVORS. Todos los derechos reservados.</p>
                            <p><a href="#">Política de Privacidad</a> | <a href="#">Términos y Condiciones</a></p>
                            <!-- Muestra la información del pie de página, incluyendo el aviso de derechos reservados y enlaces a políticas. -->
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>