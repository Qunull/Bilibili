package service.goods;

import entity.Goods;

import java.sql.SQLException;
import java.util.List;

public interface GoodsService {
    /**
     * 查询所有商品信息
     * @return
     */
    List<Goods> getGoodsList() throws SQLException;

    /**
     * 添加商品
     * @param goods
     * @return
     */
    boolean addGoods(Goods goods);

    /**
     * 修改商品信息
     * @param goods
     * @return
     */
    boolean updateGoods(Goods goods);

    /**
     * 删除商品
     * @param goodsId
     */
    void deleteGoods(Integer goodsId);

    /**
     * 根据商品编号查询商品详情
     * @param goodsId
     * @return
     */
    Goods getGoodsDetails(Integer goodsId) throws SQLException;

    /**
     * 添加商品订单
     * @param goodsId
     * @return
     */
    boolean addGoodsOrder(Integer goodsId) throws SQLException;

    /**
     * 根据商品分裂查询商品
     * @param categoryName
     * @return
     */
    List<Goods> getGoodsByCategoryName(String categoryName) throws SQLException;
}
