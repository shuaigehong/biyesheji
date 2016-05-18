package com.bishe.domain;

import com.feinno.framework.common.domain.AbstractEntity;

import javax.persistence.*;

/**
 * 菜单
 * Created by Allen on 2015/4/28.
 */
@Entity
@Table(name = "userinfo")
public class UserInfoDo extends AbstractEntity {

    private Long id;                            //主键
    private String userName;
    private String email;                        //名称
    private String pwd;                      //说明

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "UserInfoDo{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", pwd='" + pwd + '\'' +
                '}';
    }
}
