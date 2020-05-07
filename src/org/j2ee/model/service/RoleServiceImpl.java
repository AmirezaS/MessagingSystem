package org.j2ee.model.service;

import org.j2ee.model.entity.Role;
import org.j2ee.model.repository.EntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService{
    @Autowired
    private EntityRepository<Role, Long> personRepository;


    @Override
    public void save(Role role) {
        personRepository.save(role);
    }

    @Override
    public void update(Role role) {
        personRepository.update(role);
    }

    @Override
    public void remove(Role role) {
        personRepository.remove(role);
    }

    @Override
    public Role findOne(Role role) {
        return personRepository.findOne(Role.class, role.getId());
    }

    @Override
    public List<Role> findAll() {
        return personRepository.findAll(Role.class);
    }

}
