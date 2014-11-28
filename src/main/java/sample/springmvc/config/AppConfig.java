package sample.springmvc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import sample.springmvc.component.SpecialChar;
import sample.springmvc.component.UserInfo;

@Configuration
@EnableWebMvc
@ComponentScan("sample.springmvc")
public class AppConfig {
    @Bean
    public UrlBasedViewResolver setupViewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Bean
    public UserInfo userInfo() {
        return new UserInfo();
    }

    @Bean
    public SpecialChar specialChar() {
        return new SpecialChar();
    }
}
