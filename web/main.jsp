<%@page import="hmm.Frase"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>01 - Historia/Brasil Colonial</title>

    </head>
    <body>
        <%
            String contains = request.getParameter("valor");
            Frase[] frases = {
                new Frase("mitos e lendas indígenas provocaram mudanças na cultura religiosa portuguesa do século XVI, em Portugal.", 'a'),
                new Frase("a pesca, a caça e os frutos do Brasil serviram como base alimentar na culinária colonial luso-brasileira.", 'b'),
                new Frase("o uso do algodão entre os nativos brasileiros para a fabricação de redes foi reutilizado pelos colonos portugueses para a confecção de tecidos rústicos.", 'c'),
                new Frase("o cultivo entre algumas tribos brasileiras de frutas, milho e tubérculos foi rapidamente incorporado à agricultura de subsistência entre colonos portugueses.", 'd'),
                new Frase("a cultura do fumo utilizada por nativos brasileiros tornou-se um dos hábitos culturais mais apreciados pelos europeus.", 'e')
            };

            ArrayList<Frase> frasesContendo = new ArrayList<Frase>();

            for (Frase frase : frases) {
                if (frase.getFrase().contains(contains)) {
                    frasesContendo.add(frase);
                }
            }
            for (Frase frase : frasesContendo) {
                out.println(frase.getFrase());
                out.println("<br>");
            }%>
    </body>
</html>
