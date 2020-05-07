package org.j2ee.controller;

import org.j2ee.model.entity.Message;
import org.j2ee.model.entity.Person;
import org.j2ee.model.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageService messageService;

    @RequestMapping("/saveMsg.do")
    public Object save(@ModelAttribute Message message){
        messageService.save(message);
        return findOne(message);
    }

    @RequestMapping("/updateMsg.do")
    public Object update(@ModelAttribute Message message){
        messageService.update(message);
        return findAll();
    }
    @RequestMapping("/removeMsg.do")
    public Object remove(@ModelAttribute Message message){
        messageService.remove(message);
        return findAll();
    }
    @RequestMapping("/findOneMsg.do")
    public Object findOne(@ModelAttribute Message message){
        return messageService.findOne(message);
    }
    @RequestMapping("/findAllMsg.do")
    public Object findAll(){
        return messageService.findAll();
    }

    @RequestMapping("/findByAddTo.do")
    public Object findByAddTo(@ModelAttribute Message message){
        return messageService.findByAddTo(message);
    }

}
