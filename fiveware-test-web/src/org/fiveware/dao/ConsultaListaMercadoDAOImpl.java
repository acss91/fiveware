package org.fiveware.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import org.fiveware.model.Produto;

@Repository
public class ConsultaListaMercadoDAOImpl implements ConsultaListaMercadoDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	public List<Produto> listCompra() {

		return sessionFactory.getCurrentSession().createQuery("from Produto")
				.list();
	}
		
	

}
