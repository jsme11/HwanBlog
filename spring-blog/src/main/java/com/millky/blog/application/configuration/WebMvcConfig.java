package com.millky.blog.application.configuration;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
 
import com.millky.blog.application.aop.UserSessionArgumentResolver;
import com.millky.blog.application.aop.UserSessionInterceptor;
 
@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {
 
    @Autowired
    private ConnectionRepository connectionRepository;
 
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new UserSessionInterceptor(connectionRepository));
    }
 
    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        argumentResolvers.add(new UserSessionArgumentResolver(connectionRepository));
    }
}