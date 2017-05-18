package com.millky.blog.application.configuration;

import org.h2.server.web.WebServlet;
import org.springframework.beans.factory.config.ServiceLocatorFactoryBean;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.millky.blog.domain.service.factory.SearchServiceFactory;

@Configuration
public class BlogConfig {
	
	@Bean
	public ServiceLocatorFactoryBean searchFactoryServiceLocatorFactoryBean() {
		ServiceLocatorFactoryBean bean = new ServiceLocatorFactoryBean();
		bean.setServiceLocatorInterface(SearchServiceFactory.class);
		return bean;
	}
	
	@Bean
	public SearchServiceFactory searchServiceFactory() {
		return (SearchServiceFactory) searchFactoryServiceLocatorFactoryBean().getObject();
	}
	@Bean
	public ServletRegistrationBean h2servletRegistration() {
		ServletRegistrationBean registration = new ServletRegistrationBean(new WebServlet());
		registration.addUrlMappings("/console/*");
		return registration;
	}
}