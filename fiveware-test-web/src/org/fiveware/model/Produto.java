package org.fiveware.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LISTA_MERCADO")
public class Produto {
@Id	
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@Column(name="PRODUTO")
private String produto;
@Column(name="ITEM")
private String item;
@Column(name="QUANTIDADE")
private int quantidade;
@Column(name="PAGAMENTO")
private String pagamento;
@Column(name="PRECO")
private int preco;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public void setItem(String item){
  this.item = item;
}
public String getItem() {
	return item;
}

public int getQuantidade(){
return quantidade;	
}
public void setQuantidade(int quantidade) {
	this.quantidade = quantidade;
}
public String getPagamento(){
	return pagamento;
}
public void setPagamento(String pagamento){
	this.pagamento = pagamento;
}
public String getProduto() {
	return produto;
}
public void setProduto(String produto) {
	this.produto = produto;
}
public int getPreco() {
	return preco;
}
public void setPreco(int preco) {
	this.preco = preco;
}
}
