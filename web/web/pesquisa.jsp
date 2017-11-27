<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script
            src="https://code.jquery.com/jquery-3.2.1.min.js"
            integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
            crossorigin="anonymous">
        </script>

    </head>
    <body>

        <script>
            /*$(document).ready(
             function () {
             $("#search").click(
             function () {
             
             var valor = $(this).val();
             
             $.get("Controlador?valor=" + valor, function (data, status) {
             var resposta = data;
             
             var partes = data.split("|");
             
             //https://github.com/hvescovi/ifc/blob/master/pweb-2017-301/02-reengenharia-livros-301/web/principal.jsp
             //continuar daqui
             
             resultadoBusca = "";
             
             for (i = 0; i < partes.lenght; i++) {
             resultadoBusca += partes[i] + "<br />";
             }
             
             $("#output").html(resultadoBusca);
             if (resultadoBusca === "") {
             $("#output").html("Nada");
             }
             });
             
             }
             
             );
             }
             );*/

            /*$(document).on("click", "#somebutton", function () {  // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
             $.get("../Controlador?valor=" + $("#valor").val(), function (responseJson) {    // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
             var $ul = $("<ul>").appendTo($("#output")); // Create HTML <ul> element and append it to HTML DOM element with ID "somediv".
             
             $.each(responseJson, function (index, item) { // Iterate over the JSON array.
             $("<li>").text(item).appendTo($ul);      // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
             });
             });
             });*/

            //alert($("#valor"));
            $(document).on("click", "#search", function () {
                $.ajax({
                    type: "GET",
                    url: "../Controlador",
                    data: $("#form").serialize()
                }).done(function (responseJson) {
                    var $ul = $("<ul>").appendTo($("#output")); // Create HTML <ul> element and append it to HTML DOM element with ID "somediv".

                    $.each(responseJson, function (index, item) { // Iterate over the JSON array.
                        $("<li>").text(item).appendTo($ul);      // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
                    });
                });
                
                return false;
            });





        </script>


        <form id="form">
            <label for="valor">Valor a ser pesquisado: </label>
            <input type="text" name="valor" id="valor">

            <input type="submit" value="Pesquisar" id="search">
        </form>

        <p id="output">

        </p>

    </body>
</html>
