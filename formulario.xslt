<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Formulario</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; padding: 20px; }
                    form { max-width: 400px; margin: auto; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; }
                    label { display: block; margin: 10px 0 5px; }
                    input, textarea { width: 100%; padding: 8px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 3px; }
                    input[type="submit"] { background-color: #007BFF; color: white; border: none; padding: 10px 15px; cursor: pointer; }
                    input[type="submit"]:hover { background-color: #0056b3; }
                </style>
            </head>
            <body>
    <header>
        <h1>Formulario de Contacto</h1>
        <div style="margin-top: 10px;">
            <a href="index.html" style="margin-right: 10px; padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Página Principal</a>
            <a href="formulario.xml" style="padding: 10px; background-color: #007BFF; color: white; text-decoration: none; border-radius: 5px;">Formulario</a>
        </div>
    </header>

                <form action="#" method="post">
                    <xsl:for-each select="Formulario/Campo">
                        <label>
                            <xsl:value-of select="Label" />
                            <xsl:if test="Requerido='sí'"> *</xsl:if>
                        </label>
                        <xsl:choose>
                            <xsl:when test="Tipo='textarea'">
                                <textarea name="{Nombre}" required="{Requerido='sí'}"></textarea>
                            </xsl:when>
                            <xsl:otherwise>
                                <input type="{Tipo}" name="{Nombre}" required="{Requerido='sí'}" />
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                    <input type="submit" value="Enviar" />
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
