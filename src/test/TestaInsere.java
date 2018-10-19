package test;

import java.util.Calendar;

import dao.ContatoDao;
import modelo.Contato;

public class TestaInsere {
	public static void main(String[] args) {
		Contato contato = new Contato();
		
		contato.setNome("Caelum");
		contato.setEmail("contato@caelum.com");
		contato.setEndereco("R Versgo 3185");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		
		dao.adiciona(contato);
		
		System.out.println("Gravado!");
	}	
}
