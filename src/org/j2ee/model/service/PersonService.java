package org.j2ee.model.service;

import org.j2ee.model.entity.Message;
import org.j2ee.model.entity.Person;
import org.j2ee.model.entity.Role;

import java.util.List;

public interface PersonService {
    void save(Person person);
    void update(Person person);
    void remove(Person person);
    Person findOne(Person person);
    Person findOneByName(Person person);
    List<Person> findAll();
    long login(String username, String password);
    void updatePass(Person person);
}
