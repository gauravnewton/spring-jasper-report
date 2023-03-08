package com.techreloded.spring.jasper.report;

import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class ReportRepository {

    List<Employee> exportReport(){
        List<Employee> employeeList = new ArrayList<>();
        employeeList.add(new Employee(1, "Gaurav Kumar", "Associate Technology L2", 342342, "14/Nov/1994"));
        employeeList.add(new Employee(2, "Arijit", "Associate Technology L1", 34234, "14/Nov/1995"));
        employeeList.add(new Employee(3, "Satyakee Das", "Associate Technology L1", 34234, "14/Nov/198"));
        employeeList.add(new Employee(4, "Mithelesh", "Technology Lead", 23434, "04/Mar/1994"));
        employeeList.add(new Employee(5, "Sanjeet Gandhi", "CEO", 324343434, "22/Nov/2000"));
        employeeList.add(new Employee(6, "Nevidita", "Associate Technology L1", 232434, "14/Nov/1994"));
        employeeList.add(new Employee(7, "Sourdeep", "Associate Technology L1", 324342, "14/Nov/1994"));
        return employeeList;
    }
}
