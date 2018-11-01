package org.cboard.dataprovider.config;

import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;

import java.util.ArrayList;
import java.util.List;

import static com.alibaba.fastjson.util.IOUtils.UTF8;

/**
 * @Author: zhangjianping
 * @Date: 2018-10-29
 * @Description:
 */
@Configuration
public class DataProviderViewConfig {

    @Bean
    public StringHttpMessageConverter stringHttpMessageConverter(){
        StringHttpMessageConverter stringHttpMessageConverter = new StringHttpMessageConverter();
        List<MediaType> mediaTypeList = new ArrayList<>();
        MediaType mediaType = new MediaType("text", "plain", UTF8);
        mediaTypeList.add(mediaType);
        stringHttpMessageConverter.setSupportedMediaTypes(mediaTypeList);
        stringHttpMessageConverter.setDefaultCharset(UTF8);
        return stringHttpMessageConverter;
    }

    @Bean
    public FastJsonHttpMessageConverter fastJsonHttpMessageConverter(){
        FastJsonHttpMessageConverter fastJsonHttpMessageConverter = new FastJsonHttpMessageConverter();
        List<MediaType> mediaTypeList = new ArrayList<>();
        MediaType mediaType1 = new MediaType("text", "html", UTF8);
        MediaType mediaType2 = new MediaType("application", "json", UTF8);
        mediaTypeList.add(mediaType1);
        mediaTypeList.add(mediaType2);
        fastJsonHttpMessageConverter.setSupportedMediaTypes(mediaTypeList);
        return fastJsonHttpMessageConverter;
    }
}
