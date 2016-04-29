package pe.daniel.app.model;

public class ProductoBean {

	private String nombre;
	private double precio;
	private int cantidad;
	private double descuento;
	private double totalPago;
	
	public ProductoBean() {
		 
	}

	public ProductoBean(String nombre, double precio, int cantidad, double descuento, double totalPago) {
		super();
		this.nombre = nombre;
		this.precio = precio;
		this.cantidad = cantidad;
		this.descuento = descuento;
		this.totalPago = totalPago;
	}

	public double getTotalPago() {
		return totalPago;
	}

	public void setTotalPago(double totalPago) {
		this.totalPago = totalPago;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getDescuento() {
		return descuento;
	}

	public void setDescuento(double descuento) {
		this.descuento = descuento;
	}
	
	
}
