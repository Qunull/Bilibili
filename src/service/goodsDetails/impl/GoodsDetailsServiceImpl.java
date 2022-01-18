package service.goodsDetails.impl;

import dao.goodsDetails.GoodsDetailsDao;
import dao.goodsDetails.GoodsDetailsDaoImpl;
import entity.GoodsDetails;
import service.goodsDetails.GoodsDetailsService;

import java.sql.SQLException;

public class GoodsDetailsServiceImpl implements GoodsDetailsService {
    private GoodsDetailsDao goodsDetailsDao;

    public GoodsDetailsServiceImpl() {
        goodsDetailsDao = new GoodsDetailsDaoImpl();
    }

    /**
     * 根据商品编号查询商品详情图片
     * @param goodsId
     * @return
     */
    @Override
    public GoodsDetails getGoodsDetailsImg(Integer goodsId) throws SQLException {
        return goodsDetailsDao.getGoodsDetailsImg(goodsId);
    }
}
