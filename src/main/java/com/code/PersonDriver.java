package com.code;

import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.tables.Aadhar;
import com.tables.Person;

public class PersonDriver {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myunit");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		Scanner sc = new Scanner(System.in);
		Person person = new Person();
		Aadhar aadhar = new Aadhar();
		System.out.println("enter Id");
		person.setId(Integer.parseInt(sc.nextLine()));
		System.out.println("enter name");
		person.setName(sc.nextLine());
		System.out.println("enter mobile number");
		person.setMobilenumber(Long.parseLong(sc.nextLine()));
		System.out.println("enter adhar id ");
		aadhar.setId(Integer.parseInt(sc.nextLine()));
		System.out.println("enter adhar number");
		aadhar.setAdharnumber(Long.parseLong(sc.nextLine()));
		System.out.println("enter address");
		aadhar.setAddress(sc.nextLine());
		person.setAadhar(aadhar);
		et.begin();
		em.persist(person);
		em.persist(aadhar);
		et.commit();
		System.out.println("data saved");
		
		
	}

}
