package com.code;

import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.tables.Country;
import com.tables.PrimeMinister;

public class CountryDriver {
	public static void mai(String[] args) {
		Scanner sc = new Scanner(System.in);
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myunit");
		EntityManager em = emf.createEntityManager();
		Country country = em.find(Country.class, 1);
		PrimeMinister primMinister = country.getPrimeMinister();
		System.out.println(country.getName());
		System.out.println(country.getPopulation());
		System.out.println(primMinister.getName());
		
		
	}
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("myunit");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		PrimeMinister primeMinister = new PrimeMinister();
		Country country = new Country();
		System.out.println("enter country Id");
		country.setId(Integer.parseInt(sc.nextLine()));
		System.out.println("enter country name");
		country.setName(sc.nextLine());
		System.out.println("enter country population");
		country.setPopulation(Long.parseLong(sc.nextLine()));
		System.out.println("enter prime minister id");
		primeMinister.setId(Integer.parseInt(sc.nextLine()));
		System.out.println("enter prime minister name");
		primeMinister.setName(sc.nextLine());
		System.out.println("enter prime minister age");
		primeMinister.setAge(Integer.parseInt(sc.nextLine()));
		System.out.println("enter gender of prime minister");
		primeMinister.setGender(sc.nextLine());
		country.setPrimeMinister(primeMinister);
		primeMinister.setCountry(country);
		et.begin();
		em.persist(country);
		em.persist(primeMinister);

		et.commit();
		
	}

}
