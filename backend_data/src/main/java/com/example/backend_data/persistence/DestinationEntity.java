package com.example.backend_data.persistence;

import javax.persistence.*;

@Entity
@Table(name = "destinations")
public class DestinationEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String location;

    @Column(nullable = false)
    private String description;

    // Constructors, getters, and setters (if not already defined)

    // Constructor(s) - You may have one or more constructors as needed
    public DestinationEntity() {
    }

    public DestinationEntity(String name, String location, String description) {
        this.name = name;
        this.location = location;
        this.description = description;
    }

    // Getters and setters (if not already defined)

    // Getters
    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getLocation() {
        return location;
    }

    public String getDescription() {
        return description;
    }

    // Setters
    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
