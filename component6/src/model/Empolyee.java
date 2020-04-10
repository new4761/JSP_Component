package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EMPOLYEE database table.
 * 
 */
@Entity
@Table(name="EMPOLYEE")
@NamedQuery(name="Empolyee.findAll", query="SELECT e FROM Empolyee e")
public class Empolyee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ID")
	private int id;

	@Column(name="Name")
	private String name;

	@Column(name="Salary")
	private double salary;

	public Empolyee() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getSalary() {
		return this.salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

}