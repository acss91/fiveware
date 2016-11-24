Olá, estou a aplicação web como o solicitado, um formulário para cadastro web , foi utilizado o Spring versão 3.0 MVC, com hibernate 3.0,e ANNOTATIONS, AJAX para na VIEW para o cadastro, está configurado com o banco MYSQL,mas o hibernate não esta configurado para gerar a tabela automaticamente.
as configurações do hibernate estão no arquivo "jdbc.proprieties e são essas.
jdbc.driverClassName=com.mysql.jdbc.Driver
jdbc.dialect=org.hibernate.dialect.MySQLDialect
jdbc.databaseurl=jdbc:mysql://localhost:3306/world
jdbc.username=root
jdbc.password=alex

as configurações da model Produto são essas:
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

Att.
Alex.
