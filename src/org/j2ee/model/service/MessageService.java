package org.j2ee.model.service;



import org.j2ee.model.entity.Message;
import org.j2ee.model.entity.Person;

import java.util.List;

public interface MessageService {
    void save(Message message);
    void update(Message message);
    void remove(Message message);
    Message findOne(Message message);
    List<Message> findAll();
    List<Message> findByAddTo(Message message);
}
