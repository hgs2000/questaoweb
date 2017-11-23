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
            $(document).ready(
                    function () {
                        $("#search").click(
                                function () {

                                    var valor = $(this).val();
                                    
                $.get("Controlador?valor=" + valor, function (data, status){
                    var resposta = data;
                    
                    var partes = data.split("|");
                    
                    //https://github.com/hvescovi/ifc/blob/master/pweb-2017-301/02-reengenharia-livros-301/web/principal.jsp
                    //continuar daqui
                });

                                }
                        );
                    }
            );
        </script>


        <form method="post">
            <label for="valor">Valor a ser pesquisado: </label>
            <input type="text" name="valor">
            <input type="submit" value="Pesquisar" id="search">
        </form>
        
        

    </body>
</html>
