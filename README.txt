Ol�, estou a aplica��o web como o solicitado, um formul�rio para cadastro web , foi utilizado o Spring vers�o 3.0 MVC, com hibernate 3.0,e ANNOTATIONS,MAVEN, TOMCAT 8 AJAX para na VIEW para o cadastro, est� configurado com o banco MYSQL,mas o hibernate n�o esta configurado para gerar a tabela automaticamente.
as configura��es do hibernate est�o no arquivo "jdbc.proprieties e s�o essas.
jdbc.driverClassName=com.mysql.jdbc.Driver
jdbc.dialect=org.hibernate.dialect.MySQLDialect
jdbc.databaseurl=jdbc:mysql://localhost:3306/world
jdbc.username=root
jdbc.password=alex

as configura��es da model Produto s�o essas:
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
