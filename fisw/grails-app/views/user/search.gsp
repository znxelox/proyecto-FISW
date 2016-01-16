<html> 

<head> 
<title>Busqueda</title> 
</head> 

<body> 
<center>
    <fieldset> 
<g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if> 
        <g:uploadForm action="Search">
        <input TYPE=text id="s" name="buscar" size="50" /> 
        <font size=-1> 
        <br>             
        <input type=radio name="tipo" value="Archivo" /> Archivo</br> 
        <input type=radio name="tipo" value="Persona" /> Persona</br> 
        <input type=radio name="tipo" value="Cargo" /> Cargo</br> 
                         
        </font> 
    </fieldset> 
    <fieldset>
        <g:submitButton name="Search" class="save" value="Buscar" /> 
    </fieldset>
    </g:uploadForm>

</center>
</body> 

</html>