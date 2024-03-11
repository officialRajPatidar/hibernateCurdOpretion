package com.entities;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;
    private String title;
    private String content;
    private Date addedDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }
    public Note() {
        super();
    }

    public Note(String title, String content, Date addedDate) {
    	   this.id = new Random().nextInt(10000);
        this.title = title;
        this.content = content;
        this.addedDate = addedDate;
    }
}
