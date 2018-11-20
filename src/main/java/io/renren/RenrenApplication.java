package io.renren;

import io.renren.datasources.DynamicDataSourceConfig;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;

import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;


@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
@Import({DynamicDataSourceConfig.class})
@ComponentScan(basePackages = {"org.cboard","io.renren"})
@MapperScan(value = {"org.cboard.dao","io.renren.modules.**.dao"})
@EnableCaching
public class RenrenApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(RenrenApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(RenrenApplication.class);
	}
}
