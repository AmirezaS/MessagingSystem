package org.j2ee.model.service;

import org.j2ee.model.entity.Message;
import org.j2ee.model.entity.Person;
import org.j2ee.model.repository.EntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PersonServiceImpl implements PersonService {
    @Autowired
    private EntityRepository<Person, Long> personRepository;

    @Autowired
    private EntityRepository<Message, Long> messageRepository;

    @Override
    public void save(Person person) {
        personRepository.save(person);
    }

    @Override
    public void update(Person person) {
        personRepository.update(person);
    }

    @Override
    public void remove(Person person) {
        personRepository.remove(person);
    }

    @Override
    public Person findOne(Person person) {
        return personRepository.findOne(Person.class, person.getId());
    }

    @Override
    public Person findOneByName(Person person) {
        return personRepository.findOneByName(Person.class,person);
    }

    @Override
    public List<Person> findAll() {
        return personRepository.findAll(Person.class);
    }

    @Override
    public long login(String username, String password) {
        List<Person> personList = findAll();
        for (Person person : personList) {
            if (person.getName().equals(username) && person.getPassword().equals(password)){
                return person.getId();
            }
        }
        return -1;
    }

    @Override
    public void updatePass(Person person) {
        Person person1 = personRepository.findOne(Person.class,person.getId());
        person1.setPassword(person.getPassword());
        personRepository.update(person1);
    }

}
