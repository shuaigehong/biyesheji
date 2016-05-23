package com.bishe.domain;

import com.feinno.framework.common.domain.AbstractEntity;

import javax.persistence.*;

/**
 * Created by shuaigehong on 2016/5/23.
 */
@Entity
@Table(name = "admin")
public class AdminDo extends AbstractEntity {

    private Long id;
    private String name;
    private String pwd;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Override
    public java.lang.String toString() {
        return "AdminDo{" +
                "id=" + id +
                ", name=" + name +
                ", pwd=" + pwd +
                '}';
    }
}
