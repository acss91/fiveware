package org.fiveware.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.fiveware.service.ConsultaListaMercadoService;

import java.util.Map;

import org.fiveware.model.Produto;
import org.fiveware.service.InsereListaMercadoService;
@Controller
public class FiveController {
	
	@Autowired
	private ConsultaListaMercadoService ConsultaListaMercadoService;
	@RequestMapping("/index")
	public String listCompra(Map<String, Object> map) {

		map.put("produto", new Produto());
		map.put("produtoList", ConsultaListaMercadoService.listCompra() );

		return "produto";
	}
	
	
	
	
	@Autowired
	private InsereListaMercadoService   InsereListaMercadoService;	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addProduto(@ModelAttribute("produto")
	Produto produto, BindingResult result) { 
		InsereListaMercadoService.addProduto(produto);

		return "redirect:/index";
	}

}

	 
