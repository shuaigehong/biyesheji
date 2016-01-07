package com.bishe.dao;

import com.feinno.framework.common.dao.jpa.JapDynamicQueryDao;
import com.feinno.framework.common.dao.support.PageInfo;
import com.feinno.framework.utils.GenericsUtils;
import org.springframework.util.Assert;

import javax.persistence.Query;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class BaseDAO<T> extends JapDynamicQueryDao<T> {

    protected PageInfo<T> pagedQueryByJpql(PageInfo<T> pageInfo, String ql) {
        long totalCount = this.queryCount(false, ql);
        pageInfo.setTotalCount(totalCount);
        this.reviseCurrentPage(pageInfo);

        Query query = entityManager.createQuery(ql);
        query.setMaxResults(pageInfo.getCountOfCurrentPage());
        query.setFirstResult(pageInfo.getCountOfCurrentPage() * (pageInfo.getCurrentPage() - 1));
        pageInfo.setPageResults(query.getResultList());
        return pageInfo;
    }

    @Override
    protected PageInfo<T> pagedQueryByJpql(PageInfo<T> pageInfo, String ql, Object[] args) {
        long totalCount = this.queryCount(false, ql, args);
        pageInfo.setTotalCount(totalCount);
        this.reviseCurrentPage(pageInfo);

        Query query = entityManager.createQuery(ql);
        if (args != null && args.length != 0) {
            for (int i = 0; i < args.length; i++) {
                query.setParameter(i + 1, args[i]);
            }
        }

        query.setMaxResults(pageInfo.getCountOfCurrentPage());
        query.setFirstResult(pageInfo.getCountOfCurrentPage() * (pageInfo.getCurrentPage() - 1));
        pageInfo.setPageResults(query.getResultList());

        return pageInfo;
    }

    protected PageInfo<T> pagedQueryByJpql(PageInfo<T> pageInfo, String ql, Map<String, Object> param) {
        long totalCount = this.queryCount(false, ql, param);
        pageInfo.setTotalCount(totalCount);
        this.reviseCurrentPage(pageInfo);

        Query query = entityManager.createQuery(ql);
        if (param != null && param.isEmpty() == false) {
            for (Map.Entry<String, Object> entry : param.entrySet()) {
                String key = entry.getKey();
                Object val = entry.getValue();
                query.setParameter(key, val);
            }
        }

        query.setMaxResults(pageInfo.getCountOfCurrentPage());
        query.setFirstResult(pageInfo.getCountOfCurrentPage() * (pageInfo.getCurrentPage() - 1));
        pageInfo.setPageResults(query.getResultList());

        return pageInfo;
    }

    @Override
    protected PageInfo<T> pagedQueryByNativeSql(PageInfo<T> pageInfo, String sql, Object[] args) {
        return this.queryByNativeSql(this.getEntityClass(), pageInfo, sql, args);
    }

    protected PageInfo<T> pagedQueryByNativeSql(PageInfo<T> pageInfo, String sql, Map<String, Object> param) {
        return this.queryByNativeSql(this.getEntityClass(), pageInfo, sql, param);
    }

    protected PageInfo<T> pagedQueryByNativeSql(PageInfo<T> pageInfo, String sql) {
        return this.queryByNativeSql(this.getEntityClass(), pageInfo, sql);
    }

    protected PageInfo<T> queryByNativeSql(Class<T> resultClass, PageInfo<T> pageInfo, String sql) {
        long totalCount = queryCount(true, sql);
        pageInfo.setTotalCount(totalCount);
        this.reviseCurrentPage(pageInfo);

        Query query = entityManager.createNativeQuery(sql, resultClass);
        query.setMaxResults(pageInfo.getCountOfCurrentPage());
        query.setFirstResult(pageInfo.getCountOfCurrentPage() * (pageInfo.getCurrentPage() - 1));
        pageInfo.setPageResults(query.getResultList());
        return pageInfo;
    }

    @Override
    protected PageInfo<T> queryByNativeSql(Class<T> resultClass, PageInfo<T> pageInfo, String sql, Object[] args) {
        long totalCount = queryCount(true, sql, args);
        pageInfo.setTotalCount(totalCount);
        this.reviseCurrentPage(pageInfo);

        Query query = entityManager.createNativeQuery(sql, resultClass);
        if (args != null && args.length != 0) {
            for (int i = 0; i < args.length; i++) {
                query.setParameter(i + 1, args[i]);
            }
        }
        query.setMaxResults(pageInfo.getCountOfCurrentPage());
        query.setFirstResult(pageInfo.getCountOfCurrentPage() * (pageInfo.getCurrentPage() - 1));
        pageInfo.setPageResults(query.getResultList());
        return pageInfo;
    }

    protected PageInfo<T> queryByNativeSql(Class<T> resultClass, PageInfo<T> pageInfo, String sql,
                                           Map<String, Object> param) {
        long totalCount = this.queryCount(true, sql, param);
        pageInfo.setTotalCount(totalCount);
        this.reviseCurrentPage(pageInfo);

        Query query = entityManager.createNativeQuery(sql, resultClass);
        if (param != null && param.isEmpty() == false) {
            for (Map.Entry<String, Object> entry : param.entrySet()) {
                String key = entry.getKey();
                Object val = entry.getValue();
                query.setParameter(key, val);
            }
        }

        query.setMaxResults(pageInfo.getCountOfCurrentPage());
        query.setFirstResult(pageInfo.getCountOfCurrentPage() * (pageInfo.getCurrentPage() - 1));
        pageInfo.setPageResults(query.getResultList());

        return pageInfo;
    }

    @Override
    protected List<T> queryByNativeSql(Class<T> resultClass, String sql, Object... args) {
        Query query = entityManager.createNativeQuery(sql, resultClass);
        if (args != null && args.length != 0) {
            for (int i = 0; i < args.length; i++) {
                query.setParameter(i + 1, args[i]);
            }
        }
        return query.getResultList();
    }

    /**
     * 通过原始SQL转换后查询Count
     * 
     * @param nativeSql
     * @param ql
     * @param args
     * @return
     */
    protected long queryCount(boolean nativeSql, String ql, Object... args) {
        String countQueryString = "select count (*) " + removeSelect(removeOrders(ql));
        Query query = null;
        if (nativeSql) {
            query = entityManager.createNativeQuery(countQueryString);
        } else {
            query = entityManager.createQuery(countQueryString);
        }
        if (args != null && args.length != 0) {
            for (int i = 0; i < args.length; i++) {
                query.setParameter(i + 1, args[i]);
            }
        }
        Object count =  query.getSingleResult();
        return Long.valueOf(count.toString());
    }

    protected long queryCount(boolean nativeSql, String ql, Map<String, Object> param) {
        String countQueryString = "select count (*) " + removeSelect(removeOrders(ql));

        Query query = null;
        if (nativeSql) {
            query = entityManager.createNativeQuery(countQueryString);
        } else {
            query = entityManager.createQuery(countQueryString);
        }

        if (param != null && param.isEmpty() == false) {
            for (Map.Entry<String, Object> entry : param.entrySet()) {
                String key = entry.getKey();
                Object val = entry.getValue();
                query.setParameter(key, val);
            }
        }

        Object count =  query.getSingleResult();
        return Long.valueOf(count.toString());
    }

    /**
     * 去除select 子句，未考虑union的情况
     */
    protected String removeSelect(String hql) {
        Assert.hasText(hql);
        int beginPos = hql.toLowerCase().indexOf("from");
        Assert.isTrue(beginPos != -1, " hql : " + hql + " must has a keyword 'from'");
        return hql.substring(beginPos);
    }

    /**
     * 去除orderby 子句
     */
    protected String removeOrders(String hql) {
        Assert.hasText(hql);
        Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*", Pattern.CASE_INSENSITIVE);
        Matcher m = p.matcher(hql);
        StringBuffer sb = new StringBuffer();
        while (m.find()) {
            m.appendReplacement(sb, "");
        }
        m.appendTail(sb);
        return sb.toString();
    }

    /**
     * 取得entityClass的函数
     */
    @SuppressWarnings("unchecked")
    protected Class<T> getEntityClass() {
        entityClass = GenericsUtils.getSuperClassGenricType(getClass());
        return entityClass;
    }

    /**
     * 修正当前页码数
     * 
     * @param pageInfo
     */
    protected void reviseCurrentPage(PageInfo<T> pageInfo) {
        // 计算最大页码数
        Long maxPageNum = pageInfo.getTotalPage();

        if (pageInfo.getCurrentPage() > maxPageNum.intValue()) {
            pageInfo.setCurrentPage(maxPageNum.intValue());
        }

        if (pageInfo.getCurrentPage() < 1) {
            pageInfo.setCurrentPage(1);
        }
    }

}
