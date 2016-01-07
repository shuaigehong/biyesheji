package com.bishe.dao;

/**
 * 分页查询
 * Created by Allen on 2015/4/27.
 */
public class BaseQueryPageDAO  {
//    public PageInfo<Object> queryMySql(PageInfo<Object> pageInfo, String sql,
//                                         List<Object> param, Class<Object> dtoEntity) {
//        try {
//            //得到总条数
//            Query query = this.entityManager.createQuery ("select count(*) " + sql);
//            if(null != param && param.size() > 0){
//                for (int i=0; i<param.size(); i++) {
//                    query.setParameter(i+1, param.get(i));
//                }
//            }
//            if (query==null) {
//                return pageInfo;
//            }
//            Object count = query.getSingleResult();
//            pageInfo.setTotalCount(count!=null?Long.valueOf(count.toString()):0l);
//            query = this.getEntityManager().createQuery(sql.toString(), dtoEntity);
//            if(null != param && param.size() > 0){
//                for (int i=0; i<param.size(); i++) {
//                    query.setParameter(i+1, param.get(i));
//                }
//            }
//            query.setMaxResults(pageInfo.getCountOfCurrentPage());
//            query.setFirstResult(pageInfo.getCountOfCurrentPage() * (pageInfo.getCurrentPage() - 1));
//            pageInfo.setPageResults(query.getResultList());
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//        return pageInfo;
//    }
}
