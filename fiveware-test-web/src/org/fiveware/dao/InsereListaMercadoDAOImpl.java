package org.fiveware.dao;

import org.fiveware.model.Produto;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InsereListaMercadoDAOImpl implements InsereListaMercadoDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addProduto(Produto produto) {
		sessionFactory.getCurrentSession().save(produto);
	}	

}
