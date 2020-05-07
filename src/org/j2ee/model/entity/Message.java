package org.j2ee.model.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Table(name = "message")
@Entity(name = "message")
public class Message implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "MSG_ID",columnDefinition = "NUMBER")
    private long id;

    @Column(name = "MSG_SUB",columnDefinition = "VARCHAR2(30)")
    private String subject;

    @Column(name = "MSG_DATE", columnDefinition = "VARCHAR2(20)")
    private String date;

    @Column(name = "MSG_TXT", columnDefinition = "VARCHAR2(12)")
    private String text;

    @Column(name = "add_from", columnDefinition = "VARCHAR2(20)")
    private String addFrom;

    @Column(name = "add_to", columnDefinition = "VARCHAR2(20)")
    private String addTo;

    public Message() {
    }

    public Message(String subject, String date, String text, String addFrom, String addTo) {
        this.subject = subject;
        this.date = date;
        this.text = text;
        this.addFrom = addFrom;
        this.addTo = addTo;
    }

    public String getAddFrom() {
        return addFrom;
    }

    public Message setAddFrom(String addFrom) {
        this.addFrom = addFrom;
        return this;
    }

    public String getAddTo() {
        return addTo;
    }

    public Message setAddTo(String addTo) {
        this.addTo = addTo;
        return this;
    }

    public long getId() {
        return id;
    }

    public Message setId(long id) {
        this.id = id;
        return this;
    }

    public String getSubject() {
        return subject;
    }

    public Message setSubject(String subject) {
        this.subject = subject;
        return this;
    }

    public String getDate() {
        return date;
    }

    public Message setDate(String date) {
        this.date = date;
        return this;
    }

    public String getText() {
        return text;
    }

    public Message setText(String text) {
        this.text = text;
        return this;
    }
}
