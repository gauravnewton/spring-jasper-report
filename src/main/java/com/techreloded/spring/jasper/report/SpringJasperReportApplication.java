package com.techreloded.spring.jasper.report;

import net.sf.jasperreports.engine.JRException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;

@SpringBootApplication
@RestController
public class SpringJasperReportApplication {

	@Autowired
	private ReportService reportService;
	public static void main(String[] args) {
		SpringApplication.run(SpringJasperReportApplication.class, args);
	}

	@GetMapping("/report/{reportFormat}")
	public ResponseEntity geAllEmployee(@PathVariable String reportFormat) throws JRException, FileNotFoundException {
		Resource resource = reportService.exportReport(reportFormat);
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType("application/octet-stream"))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
				.body(resource);
	}
}
