package br.com.learning.application;

import java.text.SimpleDateFormat;

import br.com.learning.model.Cliente;
import br.com.learning.service.ClienteService;

public class App {

	public static void main(String[] args) throws Exception {
		ClienteService clienteService = new ClienteService();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		
		Cliente cliente = new Cliente();
		cliente.setNome("Antonio da Silva");
		cliente.setCpf("64581274591");
		cliente.setDataNascimento(sdf.parse("25/10/1985"));
		
		clienteService.incluir(cliente);
	}

}
