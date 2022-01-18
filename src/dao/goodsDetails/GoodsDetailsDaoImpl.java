package dao.goodsDetails;

import dao.BaseDaoImpl;
import entity.GoodsDetails;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GoodsDetailsDaoImpl extends BaseDaoImpl implements GoodsDetailsDao {
    /**
     * 根据商品编号查询商品详情图片
     * @param goodsId
     * @return
     * @throws SQLException
     */
    @Override
    public GoodsDetails getGoodsDetailsImg(Integer goodsId) throws SQLException {
        String sql = "select * from details where goodsId = ?";
        ResultSet rs = executeSelect(sql, goodsId);
        GoodsDetails goodsDetails = new GoodsDetails();
        while (rs.next()) {
            goodsDetails.setGoodsId(rs.getInt("goodsId"));
            goodsDetails.setPic1(rs.getString("pic1"));
            goodsDetails.setPic2(rs.getString("pic2"));
            goodsDetails.setPic3(rs.getString("pic3"));
            goodsDetails.setPic4(rs.getString("pic4"));
            goodsDetails.setPic5(rs.getString("pic5"));
            goodsDetails.setPic6(rs.getString("pic6"));
        }
        return goodsDetails;
    }
}
