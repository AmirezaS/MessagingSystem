package org.j2ee.model.service;

import org.j2ee.model.entity.Role;

import java.util.List;

public interface RoleService {
    void save(Role role);
    void update(Role role);
    void remove(Role role);
    Role findOne(Role role);
    List<Role> findAll();

}
