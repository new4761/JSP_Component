package model;

import java.util.List;

import javax.persistence.*;

public class Soapservice {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Soapservice");
	EntityManager em = emf.createEntityManager();

//	SoapService() {
//
//		em.getTransaction().begin();
//	}

	public Empolyee findByid(int id) {
		Empolyee emp = em.find(Empolyee.class, id);
		return emp;
	}

	public List<Empolyee> findAllEmpolyee() {
		Query query = em.createNamedQuery("Empolyee.findAll");
		List<Empolyee> results = (List<Empolyee>) query.getResultList();
		return results;
	}

	public int insertEmp(Empolyee emp) {
		em.getTransaction().begin();
		Empolyee newEmp = new Empolyee();
		newEmp.setId(emp.getId());
		newEmp.setName(emp.getName());
		newEmp.setSalary(emp.getSalary());
		em.persist(newEmp);
		em.getTransaction().commit();
		/*
		 * emf.close(); em.close();
		 */
		return 0;
	}

	public int removeEmployee(int id) {
		em.getTransaction().begin();
		/* em.getTransaction().begin(); */
		Empolyee emp = em.find(Empolyee.class, id);
		em.remove(emp);
		em.getTransaction().commit();
		/*
		 * emf.close(); em.close();
		 */
		return 0;
	}

	public int updateEmp(Empolyee emp) {
		em.getTransaction().begin();
		/* em.getTransaction().begin(); */
		Empolyee target = em.find(Empolyee.class, emp.getId());
		target.setName(emp.getName());
		target.setSalary(emp.getSalary());
		em.persist(target);
		em.getTransaction().commit();/* emf.close(); em.close(); */
		return 0;
	}

}
