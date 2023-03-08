package com.techreloded.spring.jasper.report;

public class Employee {
    private int id;
    private String name;
    private String designation;
    private double salary;
    private String doj;

    public Employee() {
    }

    public Employee(int id, String name, String designation, double salary, String doj) {
        this.id = id;
        this.name = name;
        this.designation = designation;
        this.salary = salary;
        this.doj = doj;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }
}
