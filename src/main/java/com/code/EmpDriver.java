package com.code;

import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.tables.Employee;

public class EmpDriver {
static 	EntityManagerFactory emf = Persistence.createEntityManagerFactory("myunit");
static 	EntityManager em = emf.createEntityManager();
static EntityTransaction et = em.getTransaction();
static Scanner sc = new Scanner(System.in);


	public static void add() {
		Employee s =  new Employee();
		System.out.println("enter name");
		s.setName(sc.nextLine());
		System.out.println("enter age");
		s.setAge(Integer.parseInt(sc.nextLine()));
		System.out.println("enter department");
		s.setDept(sc.nextLine());
		System.out.println("enter id");
		s.setId(Integer.parseInt(sc.nextLine()));
		et.begin();
		em.persist(s);
		et.commit();

	}
	public static void update() {
		System.out.println("enter employee id");
		Employee s = em.find(Employee.class, Integer.parseInt(sc.nextLine()));
		System.out.println("enter name");
		s.setName(sc.nextLine());
		System.out.println("enter age");
		s.setAge(Integer.parseInt(sc.nextLine()));
		System.out.println("enter deparment");
		s.setDept(sc.nextLine());

	}
	public static void remove() {
		System.out.println("enter id of employee");
		Employee s = em.find(Employee.class, Integer.parseInt(sc.nextLine()));
		
		et.begin();
		em.remove(s);
		et.commit();
		

	}
	public static void find(String[] args)  {
		
		
		
		System.out.println("enter employee id");
		
		
		Employee s = em.find(Employee.class, Integer.parseInt(sc.nextLine()));
		if(s==null) {
			System.err.println("employee not found");
			return;
		}
		
		System.out.println(s.getAge());
		System.out.println(s.getDept());
		System.out.println(s.getName());
		System.out.println(s.getId());
		
	}

}
