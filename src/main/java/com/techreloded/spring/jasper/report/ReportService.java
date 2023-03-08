package com.techreloded.spring.jasper.report;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.util.ResourceUtils;

@Service
public class ReportService {

    @Autowired
    private ReportRepository reportRepository;
    public Resource exportReport(String reportFormat) throws FileNotFoundException, JRException {
        String path = "D:\\";
        Path reportPath = null;
        Resource resource = null;
        File file = ResourceUtils.getFile("classpath:report.jrxml");
        List<Employee> employeeList = reportRepository.exportReport();
        JasperReport jasperReport = JasperCompileManager.compileReport(file.getAbsolutePath());
        JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(employeeList);
        Map<String, Object> parameter = new HashMap<>();
        parameter.put("createdBy", "Gaurav");
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameter,dataSource);
        if (reportFormat.equalsIgnoreCase("html")) {
            JasperExportManager.exportReportToHtmlFile(jasperPrint, path + "employee.html");
            reportPath = Paths.get(path + "employee.html");
        } else if(reportFormat.equalsIgnoreCase("pdf")) {
            JasperExportManager.exportReportToPdfFile(jasperPrint, path +"employee.pdf");
            reportPath = Paths.get(path + "employee.pdf");

        }
        try {
            resource = new UrlResource(reportPath.toUri());
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        return resource;
    }
}
