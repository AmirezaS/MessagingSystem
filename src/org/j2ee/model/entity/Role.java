package org.j2ee.model.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Table(name = "role")
@Entity(name = "role")
public class Role implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ROLE_ID",columnDefinition = "NUMBER")
    private long id;

    @Column(name = "ROLE_NAME", columnDefinition = "VARCHAR2(20)")
    private String name;

    public long getId() {
        return id;
    }

    public Role setId(long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Role setName(String name) {
        this.name = name;
        return this;
    }
}
