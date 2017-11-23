
public class Frase {

    private char idquestao;
    private String frase;

    public String getFrase() {
        return this.idquestao + ") "+ frase;
    }
    
    public Frase(String frase, char id){
        this.frase = frase;
        this.idquestao = id;
    }

}
