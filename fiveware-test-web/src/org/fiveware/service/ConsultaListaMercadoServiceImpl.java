package org.fiveware.service;

import java.util.List;


import org.fiveware.dao.ConsultaListaMercadoDAO;
import org.fiveware.model.Produto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;




@Service
public class ConsultaListaMercadoServiceImpl implements ConsultaListaMercadoService {
	@Autowired
	private ConsultaListaMercadoDAO ConsultaListaCompraDAO;
	@Transactional
	public List<Produto> listCompra() {
	return	ConsultaListaCompraDAO.listCompra();
	
	}


}
