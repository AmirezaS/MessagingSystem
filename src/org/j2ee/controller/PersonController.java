package org.j2ee.controller;

import org.j2ee.model.entity.Message;
import org.j2ee.model.entity.Person;
import org.j2ee.model.entity.Role;
import org.j2ee.model.service.MessageService;
import org.j2ee.model.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
@RequestMapping("/person")
public class PersonController {
    @Autowired
    private PersonService personService;

    @Autowired
    private MessageService messageService;

    @RequestMapping("/save.do")
    public Object save(@ModelAttribute Person person){
        personService.save(person);
       return findAll();
    }

    @RequestMapping("/update.do")
    public Object update(@ModelAttribute Person person){
        personService.update(person);
        return findOne(person);
    }
    @RequestMapping("/updatePass.do")
    public Object updatePass(@ModelAttribute Person person){
        personService.updatePass(person);
        return findOne(person);
    }
    @RequestMapping("/remove.do")
    public Object remove(@ModelAttribute Person person){
        personService.remove(person);
        return findAll();
    }
    @RequestMapping("/findOne.do")
    public Object findOne(@ModelAttribute Person person){
        return personService.findOne(person);
    }
    @RequestMapping("/findOneByName.do")
    public Object findOneByName(@ModelAttribute Person person){
        return personService.findOneByName(person);
    }
    @RequestMapping("/findAll.do")
    public Object findAll(){
        return personService.findAll();
    }

    @RequestMapping("/login.do")
    public Object login(@ModelAttribute Person person){
        if (personService.login(person.getName(),person.getPassword()) != -1){
            person.setId(personService.login(person.getName(),person.getPassword()));
            return personService.findOne(person);
        }
        return null;
    }

    @RequestMapping("/assignRole.do")
    public Object assignRole(@ModelAttribute Person person){
        Person person1 = personService.findOne(person);
        person1.setRole(person.getRole());
        return update(person1);
    }
}
