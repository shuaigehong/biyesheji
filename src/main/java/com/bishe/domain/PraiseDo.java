package com.bishe.domain;

import com.feinno.framework.common.domain.AbstractEntity;

import javax.persistence.*;

/**
 * Created by shuaigehong on 2016/5/23.
 */
@Entity
@Table(name = "praise")
public class PraiseDo extends AbstractEntity {
    private Long id;
    private Long userId;
    private int praiseCount;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public int getPraiseCount() {
        return praiseCount;
    }

    public void setPraiseCount(int praiseCount) {
        this.praiseCount = praiseCount;
    }

    @Override
    public String toString() {
        return "PraiseDo{" +
                "id=" + id +
                ", userId=" + userId +
                ", praiseCount=" + praiseCount +
                '}';
    }
}
