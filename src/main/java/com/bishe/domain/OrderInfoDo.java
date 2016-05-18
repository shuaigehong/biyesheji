package com.bishe.domain;

import com.feinno.framework.common.domain.AbstractEntity;

import javax.persistence.*;

/**
 * Created by shuaigehong on 2016/5/17.
 */
@Entity
@Table(name = "userOrder")
public class OrderInfoDo extends AbstractEntity {
    private Long id;
    private Long userId;
    private Long typeId;
    private String orderTitle;
    private String orderDescript;
    private String keyWords;
    private String commond;
    private Double price;
    private Long storeId;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOrderTitle() {
        return orderTitle;
    }

    public void setOrderTitle(String orderTitle) {
        this.orderTitle = orderTitle;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    public String getOrderDescript() {
        return orderDescript;
    }

    public void setOrderDescript(String orderDescript) {
        this.orderDescript = orderDescript;
    }

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    public String getCommond() {
        return commond;
    }

    public void setCommond(String commond) {
        this.commond = commond;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Long getStoreId() {
        return storeId;
    }

    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }

    @Override
    public String toString() {
        return "OrderInfoDo{" +
                "id=" + id +
                ", userId=" + userId +
                ", typeId=" + typeId +
                ", orderTitle='" + orderTitle + '\'' +
                ", orderDescript='" + orderDescript + '\'' +
                ", keyWords='" + keyWords + '\'' +
                ", commond='" + commond + '\'' +
                ", price=" + price +
                ", storeId=" + storeId +
                '}';
    }
}
