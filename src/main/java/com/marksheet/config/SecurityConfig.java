package com.marksheet.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
@Configuration
@EnableMethodSecurity
public class SecurityConfig {
    @Bean
    public static PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
    @Bean
    SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests((authorize) -> authorize.anyRequest().authenticated())
                .formLogin(Customizer.withDefaults())
                .httpBasic(Customizer.withDefaults());
        return http.build();
    }

    @Bean
    public UserDetailsService userDetailsService(){
        UserDetails adm1= User.builder()
                .username("pooja")
                .password(passwordEncoder().encode("adm"))
                .roles("ADMIN")
                .build();
        UserDetails adm2= User.builder()
                .username("kshitij")
                .password(passwordEncoder().encode("adm"))
                .roles("ADMIN")
                .build();
        UserDetails adm3= User.builder()
                .username("surabhi")
                .password(passwordEncoder().encode("adm"))
                .roles("ADMIN")
                .build();
        UserDetails adm4= User.builder()
                .username("bhoomi")
                .password(passwordEncoder().encode("adm"))
                .roles("ADMIN")
                .build();
        UserDetails student= User.builder()
                .username("student")
                .password(passwordEncoder().encode("stu"))
                .roles("USER")
                .build();
        return new InMemoryUserDetailsManager(adm1,adm2,adm3,adm4,student);
    }
}

