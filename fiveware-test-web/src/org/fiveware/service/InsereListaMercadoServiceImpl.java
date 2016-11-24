package org.fiveware.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.fiveware.dao.InsereListaMercadoDAO;
import org.fiveware.model.Produto;

@Service
public class InsereListaMercadoServiceImpl implements InsereListaMercadoService{
	@Autowired
	private InsereListaMercadoDAO InsereListaMercadoDAO;
	
	@Transactional
	public void addProduto(Produto produto) {
		
		InsereListaMercadoDAO.addProduto(produto);
	
	}

}
