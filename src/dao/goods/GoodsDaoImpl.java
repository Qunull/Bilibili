package dao.goods;

import dao.BaseDaoImpl;
import entity.Goods;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsDaoImpl extends BaseDaoImpl implements GoodsDao {
    @Override
    public List<Goods> getGoodsList() throws SQLException {
        List<Goods> goodsList = new ArrayList<>();
        String sql = "select * from goods";
        ResultSet rs = executeSelect(sql);
        while (rs.next()) {
            Goods goods = new Goods();
            goods.setGoodsCategory(rs.getInt("goodsCategory"));
            goods.setGoodsId(rs.getInt("goodsId"));
            goods.setGoodsName(rs.getString("goodsName"));
            goods.setGoodsPic(rs.getString("goodsPic"));
            goods.setGoodsPrice(rs.getDouble("goodsPrice"));
            goods.setGoodsBrand(rs.getString("goodsBrand"));

            goodsList.add(goods);
        }
        closeResource();
        return goodsList;
    }

    @Override
    public int addGoods(Goods goods) {
        return 0;
    }

    @Override
    public int updateGoods(Goods goods) {
        return 0;
    }

    @Override
    public int deleteGoods(Integer goodsId) {
        return 0;
    }

    @Override
    public Goods getGoodsDetails(Integer goodsId) throws SQLException {
        String sql = "select * from goods where goodsId = ?";
        ResultSet rs = executeSelect(sql, goodsId);
        Goods goods = new Goods();
        while (rs.next()) {
            goods.setGoodsCategory(rs.getInt("goodsCategory"));
            goods.setGoodsId(rs.getInt("goodsId"));
            goods.setGoodsName(rs.getString("goodsName"));
            goods.setGoodsPic(rs.getString("goodsPic"));
            goods.setGoodsPrice(rs.getDouble("goodsPrice"));
            goods.setGoodsBrand(rs.getString("goodsBrand"));
        }
        return goods;
    }

    @Override
    public int addGoodsOrder(Integer goodsId) throws SQLException {
        Goods goods = this.getGoodsDetails(goodsId);
        String sql = "insert into orders(goodsPic, goodsName, goodsNumber, orderPrice) values(?, ?, ?, ?)";
        int count = executeModify(sql, goods.getGoodsPic(), goods.getGoodsName(), goods.getGoodsId(), goods.getGoodsPrice());
        return count;
    }

    @Override
    public List<Goods> getGoodsByCategoryName(String categoryName) throws SQLException {
        String sql = "select * from goods inner join category on goodsCategory = categoryId where categoryName = ?";
        ResultSet rs = executeSelect(sql, categoryName);
        List<Goods> goodsList = new ArrayList<>();
        while (rs.next()) {
            Goods goods = new Goods();
            goods.setGoodsCategory(rs.getInt("goodsCategory"));
            goods.setGoodsId(rs.getInt("goodsId"));
            goods.setGoodsName(rs.getString("goodsName"));
            goods.setGoodsPic(rs.getString("goodsPic"));
            goods.setGoodsPrice(rs.getDouble("goodsPrice"));
            goods.setGoodsBrand(rs.getString("goodsBrand"));

            goodsList.add(goods);
        }
        return goodsList;
    }
}
