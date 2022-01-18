package dao.goods;

import entity.Goods;

import java.sql.SQLException;
import java.util.List;

public interface GoodsDao {
    /**
     * 查询所有商品列表信息
     * @return
     */
    List<Goods> getGoodsList() throws SQLException;

    /**
     * 添加商品
     * @return
     */
    int addGoods(Goods goods);

    /**
     * 修改商品信息
     * @return
     */
    int updateGoods(Goods goods);

    /**
     * 删除商品
     * @return
     */
    int deleteGoods(Integer goodsId);

    /**
     * 根据商品编号查询商品详细信息
     * @param goodsId
     * @return
     */
    Goods getGoodsDetails(Integer goodsId) throws SQLException;

    /**
     * 添加商品订单
     * @param goodsId
     * @return
     */
    int addGoodsOrder(Integer goodsId) throws SQLException;

    /**
     * 根据分类查询商品
     * @param categoryName
     * @return
     */
    List<Goods> getGoodsByCategoryName(String categoryName) throws SQLException;
}
