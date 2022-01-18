package dao.goodsDetails;

import entity.GoodsDetails;

import java.sql.SQLException;

public interface GoodsDetailsDao {
    /**
     * 根据商品编号查询商品详情图片
     * @param goodsId
     * @return
     */
    GoodsDetails getGoodsDetailsImg(Integer goodsId) throws SQLException;
}
