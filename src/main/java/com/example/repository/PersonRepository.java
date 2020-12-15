package com.example.repository;

import com.example.entity.Person;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.Id;
import java.util.List;

@Repository
public interface PersonRepository  extends CrudRepository<Person , Integer> {
    @Query("select p from Person p where p.id = :id  ")
    public Person findOne(@Param("id")  int id);
    @Query("select p from  Person p where p.name like '%?1%' ")
    public List<Person> findByNames(@Param("name") String name);
}
