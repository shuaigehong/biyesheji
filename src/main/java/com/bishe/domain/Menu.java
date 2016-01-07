package com.bishe.domain;

import com.feinno.framework.common.domain.AbstractEntity;

import javax.persistence.*;

/**
 * 菜单
 * Created by Allen on 2015/4/28.
 */
@Entity
@Table(name = "menu")
public class Menu extends AbstractEntity {

    private Long id;                            //主键
    private String name;                        //名称
    private String remark;                      //说明

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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
