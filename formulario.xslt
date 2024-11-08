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
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #000; }
                    <!-- Estilos generales para el cuerpo de la página: fuente, color de fondo y color de texto -->
                    form { max-width: 400px; margin: 20px auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; }
                    <!-- Estilos para el formulario: centrado en la página, bordes redondeados y fondo blanco -->
                    label, input, textarea { display: block; margin-bottom: 10px; }
                    <!-- Los campos (etiquetas, inputs y textarea) se muestran en bloque, con un margen inferior de 10px -->
                    input[type="text"], input[type="email"], textarea { width: 100%; padding: 8px; }
                    <!-- Estilos específicos para inputs de tipo texto, correo y textarea: ancho 100% y algo de padding -->
                    input[type="submit"] { padding: 10px 15px; background-color: #007BFF; color: white; border: none; border-radius: 5px; cursor: pointer; }
                    <!-- Estilos para el botón de envío: color de fondo, texto blanco, sin bordes y con cursor tipo puntero -->
                    input[type="submit"]:hover { background-color: #0056b3; }
                    <!-- Cuando el usuario pasa el mouse por encima del botón, el fondo cambia de color -->
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
                <header>
                    <h1>Formulario de Contacto</h1>
                    <!-- Título principal de la página -->
                    <div style="margin-top: 10px;">
                        <a href="vampiresurvivors.xml" style="margin-right: 10px; padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Página Principal</a>
                        <a href="formulario.xml" style="padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Formulario</a>
                    </div>
                    <!-- Enlaces para navegar a la página principal o a este formulario, con un estilo de botones -->
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

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>