package br.com.hector.testes;

public class Cliente implements Comparable<Cliente> {
	
	private int id_costumer;
	private String cpf_cnpj;
	private String nm_costumer;
	private int is_active;
	private double vl_total;
	
	public Cliente (int id_costumer, String cpf_cnpj, String nm_costumer, int is_active, double vl_total) {
		this.id_costumer = id_costumer;
		this.cpf_cnpj = cpf_cnpj;
		this.nm_costumer = nm_costumer;
		this.is_active = is_active;
		this.vl_total = vl_total;
	}
	
	public int getId_costumer() {
		return id_costumer;
	}
	public void setId_costumer(int id_costumer) {
		this.id_costumer = id_costumer;
	}
	public String getCpf_cnpj() {
		return cpf_cnpj;
	}
	public void setCpf_cnpj(String cpf_cnpj) {
		this.cpf_cnpj = cpf_cnpj;
	}
	public String getNm_costumer() {
		return nm_costumer;
	}
	public void setNm_costumer(String nm_costumer) {
		this.nm_costumer = nm_costumer;
	}
	public int getIs_active() {
		return is_active;
	}
	public void setIs_active(int is_active) {
		this.is_active = is_active;
	}
	public double getVl_total() {
		return vl_total;
	}
	public void setVl_total(double vl_total) {
		this.vl_total = vl_total;
	}
	
	@Override
	public int compareTo(Cliente cliente) {
		double compararSaldo=((Cliente)cliente).getVl_total();
		
		return (int) (this.vl_total-compararSaldo);
	}
	//método criado para poder dar sort no arraylist de clientes
	
	
}
