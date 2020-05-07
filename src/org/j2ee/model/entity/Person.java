package org.j2ee.model.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.security.AllPermission;
import java.util.ArrayList;
import java.util.List;

@Table(name = "person")
@Entity(name = "person")
public class Person implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "USER_ID",columnDefinition = "NUMBER")
    private long id;

    @Column(name = "USER_NAME",columnDefinition = "VARCHAR2(20)")
    private String name;

    @Column(name = "USER_EMAIL",columnDefinition = "VARCHAR2(45)")
    private String email;

    @Column(name = "PASSWORD", columnDefinition = "VARCHAR2(20)")
    private String password;

    @OneToOne(cascade = CascadeType.ALL)
    private Role role;

    public Person() {
    }

    public Person(String name, String email, String password, Role role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public Role getRole() {
        return role;
    }

    public Person setRole(Role role) {
        this.role = role;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public Person setPassword(String password) {
        this.password = password;
        return this;
    }
    public long getId() {
        return id;
    }

    public Person setId(long id) {
        this.id = id;
        return this;
    }
    public String getName() {
        return name;
    }

    public Person setName(String name) {
        this.name = name;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Person setEmail(String email) {
        this.email = email;
        return this;
    }
}
