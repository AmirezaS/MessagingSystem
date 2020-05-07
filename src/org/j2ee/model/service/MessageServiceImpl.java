package org.j2ee.model.service;

import org.j2ee.model.entity.Message;
import org.j2ee.model.repository.EntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {
    @Autowired
    private EntityRepository<Message,Long> messageRepository;

    @Override
    public void save(Message message) {
        messageRepository.save(message);
    }

    @Override
    public void update(Message message) {
        messageRepository.update(message);
    }

    @Override
    public void remove(Message message) {
        messageRepository.remove(message);
    }

    @Override
    public Message findOne(Message message) {
        return messageRepository.findOne(Message.class, message.getId());
    }

    @Override
    public List<Message> findAll() {
        return messageRepository.findAll(Message.class);
    }

    @Override
    public List<Message> findByAddTo(Message message) {
        return messageRepository.findByAddTo(Message.class,message);
    }
}
