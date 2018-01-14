package br.com.hector.testes;

import java.sql.*;
import br.com.hector.jdbc.ConexaoBanco;
import java.util.ArrayList;
import java.util.Collections;



public class Teste {

	public static void main(String[] args) throws SQLException {
		double sum = 0;
		int count = 0;
		ArrayList<Cliente> customers = new ArrayList<Cliente>();
		Connection con = new ConexaoBanco().getConnection();		
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM tb_costumer_account");		
		
		ResultSet rs = stmt.executeQuery();		
		
		while(rs.next()) {
			if(rs.getDouble("vl_total") > 560 && rs.getInt("id_costumer") > 1500 && rs.getInt("id_costumer") < 2700) {
				Cliente cliente = new Cliente(
						rs.getInt("id_costumer"), 
						rs.getString("cpf_cnpj"), 
						rs.getString("nm_costumer"), 
						rs.getInt("is_active"), 
						rs.getDouble("vl_total")
						);
				sum += rs.getDouble("vl_total");
				customers.add(cliente);
				count++;
				
			}
		}		
		
		Collections.sort(customers, Collections.reverseOrder());		
		System.out.println("A média final é: " + printAvg(sum, count));		
		printCustomers(customers);		
	}
	
	public static double printAvg (double sum, int count) {
		return sum/count;
	}
	
	public static void printCustomers(ArrayList<Cliente> customers) {
		for(int i=0; i < customers.size(); i++) {
			System.out.println("Cliente: " + customers.get(i).getCpf_cnpj() + " | " + "CPF: " + customers.get(i).getNm_costumer() + " | " + "Saldo: R$ " + customers.get(i).getVl_total());
		}
	}
	
}
	

	
		
		
		
		
		
		
		

	


