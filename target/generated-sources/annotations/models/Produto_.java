package models;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-04-24T13:30:37")
@StaticMetamodel(Produto.class)
public class Produto_ { 

    public static volatile SingularAttribute<Produto, Float> preco;
    public static volatile SingularAttribute<Produto, String> categoria;
    public static volatile SingularAttribute<Produto, Integer> quantidadeEstoque;
    public static volatile SingularAttribute<Produto, Long> id;
    public static volatile SingularAttribute<Produto, String> marcaModelo;
    public static volatile SingularAttribute<Produto, String> nomeProduto;

}