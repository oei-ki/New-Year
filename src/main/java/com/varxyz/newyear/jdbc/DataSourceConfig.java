package com.varxyz.newyear.jdbc;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;

@Configuration
@ComponentScan(basePackages = "com.varxyz.newyear.dao")
public class DataSourceConfig {
	
	@Bean(destroyMethod = "close")
	public DataSource dataSource() {  //dataSource클로즈는 종료가 아니라 다시 불러들이는거임?
		DataSource ds = new DataSource();
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/newyear?severTimezone=Asia/Seoul");
		ds.setUsername("newyear");
		ds.setPassword("newyear");
		ds.setInitialSize(2); //커넥션 풀 초기화시 생성할 초기 커넥션 갯수(기본값 10)
		ds.setMaxActive(10);  //풀에서 가져올 수 있는 최대 커넥션 갯구(기본값 100)
		ds.setMaxIdle(10);    //풀에 유지할 수 있는 최대 커넥션 수(기본값은 maxActive와 동일)
		return ds;
	}
	
	@Bean
	public JdbcTemplate jdbcTemplate() {
		return new JdbcTemplate(dataSource());
	}
	
}