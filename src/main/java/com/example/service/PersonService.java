package com.example.service;

import com.example.entity.Person;
import com.example.repository.PersonRepository;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonService {

    @Autowired
    PersonRepository personRepository;

    @Autowired
    private SessionFactory sessionFactory;

    public List<Person> getList(){
        return (List<Person>) personRepository.findAll();
    }
    public void addPerson(Person person){
        personRepository.save(person);
    }
    public void delete(int id){
        personRepository.deleteById(id);
    }
    public List<Person> searchByName(String name){
        return (List<Person>) personRepository.findByNames(name);
    }
    public Person getPerson(int id){
        return personRepository.findOne(id);
    }
}
