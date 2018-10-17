package org.cboard.dataprovider.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author ryan--yang
 * @email yangrui@cetcbigdata.com
 * @date 2018-10-17 15:22
 */
@Configuration
public class H2DataSourceConfig {

    @Bean("h2DataSource")
    public BasicDataSource basicDataSource(@Value("${aggregator.h2.url}") String url){

        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setDriverClassName("org.h2.Driver");
        basicDataSource.setUsername("sa");
        basicDataSource.setPassword("");
        basicDataSource.setMaxTotal(20);
        basicDataSource.setUrl(url);
        return basicDataSource;
    }
}
