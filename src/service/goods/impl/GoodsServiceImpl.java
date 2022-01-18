package service.goods.impl;

import dao.goods.GoodsDao;
import dao.goods.GoodsDaoImpl;
import entity.Goods;
import service.goods.GoodsService;

import java.sql.SQLException;
import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    private GoodsDao goodsDao;

    public GoodsServiceImpl() {
        goodsDao = new GoodsDaoImpl();
    }

    @Override
    public List<Goods> getGoodsList() throws SQLException {
        return goodsDao.getGoodsList();
    }

    @Override
    public boolean addGoods(Goods goods) {
        if (goodsDao.addGoods(goods) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean updateGoods(Goods goods) {
        if (goodsDao.updateGoods(goods) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public void deleteGoods(Integer goodsId) {
        goodsDao.deleteGoods(goodsId);
    }

    @Override
    public Goods getGoodsDetails(Integer goodsId) throws SQLException {
        return goodsDao.getGoodsDetails(goodsId);
    }

    @Override
    public boolean addGoodsOrder(Integer goodsId) throws SQLException {
        if (goodsDao.addGoodsOrder(goodsId) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public List<Goods> getGoodsByCategoryName(String categoryName) throws SQLException {
        return goodsDao.getGoodsByCategoryName(categoryName);
    }
}
