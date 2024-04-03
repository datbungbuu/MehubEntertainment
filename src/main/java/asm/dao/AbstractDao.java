package asm.dao;

import java.util.List;

import javax.management.RuntimeErrorException;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import asm.util.JpaUtil;

public class AbstractDao<T> {

	public static final EntityManager entityManager = JpaUtil.getEntityManager();
	
	@Override
	protected void finalize() throws Throwable {
		entityManager.close();
		super.finalize();
	}
	
	public T finById(Class<T> clazz, String id) {
		return entityManager.find(clazz, id);
	}
	
	public List<T> findAll(Class<T> clazz){
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT o FROM ").append(entityName).append(" o");
		
		TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
		return query.getResultList();
	}
	
	public List<T> findAll(Class<T> clazz, int pageNumber, int pageSize){
		
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT o FROM ").append(entityName).append(" o");
		
		TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
		query.setFirstResult((pageNumber - 1) * pageSize);
		query.setMaxResults(pageSize);
		
		return query.getResultList();
	}
	
	public T findOne(Class<T> clazz, String sql, Object...params) {
		TypedQuery<T> query = entityManager.createQuery(sql, clazz);
		for(int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}
		List<T> result = query.getResultList();
		if(result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}
	
	public List<T> findMany(Class<T> clazz, String sql, Object...params) {
		TypedQuery<T> query = entityManager.createQuery(sql, clazz);
		for(int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}		
		return query.getResultList();
	}
	
	public List<Object[]> findManyByNativeQuery(Class<T> clazz, String sql, Object...params){
		Query query = entityManager.createNativeQuery(sql, clazz);
		for(int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}
		return query.getResultList();
	}
	
	public T create(T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(entity);
			entityManager.getTransaction().commit();
			System.out.println("Success");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Fail");
			throw new RuntimeException(e);
		}
	}
	
	public T update(T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.merge(entity);
			entityManager.getTransaction().commit();
			System.out.println("Success");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Fail");
			throw new RuntimeException(e);
		}
	}
	
	public T delete(T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.remove(entity);
			entityManager.getTransaction().commit();
			System.out.println("Success");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Fail");
			throw new RuntimeException(e);
		}
	}
	
}
