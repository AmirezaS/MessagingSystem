package org.j2ee.controller;

import org.j2ee.model.entity.Role;
import org.j2ee.model.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping("/saveRole.do")
    public Object save(@ModelAttribute Role role){
        roleService.save(role);
        return findOne(role);
    }

    @RequestMapping("/updateRole.do")
    public Object update(@ModelAttribute Role role){
        roleService.update(role);
        return findOne(role);
    }
    @RequestMapping("/removeRole.do")
    public Object remove(@ModelAttribute Role role){
        roleService.remove(role);
        return findOne(role);
    }
    @RequestMapping("/findOneRole.do")
    public Object findOne(@ModelAttribute Role role){
        return roleService.findOne(role);
    }
    @RequestMapping("/findAllRole.do")
    public Object findAll(){
        return roleService.findAll();
    }

}
