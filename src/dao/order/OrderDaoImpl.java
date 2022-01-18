package dao.order;

import dao.BaseDaoImpl;
import entity.Order;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDaoImpl extends BaseDaoImpl implements OrderDao {
    @Override
    public List<Order> getOrderList() throws SQLException {
        String sql = "select * from orders";
        ResultSet rs = executeSelect(sql);
        List<Order> orderList = new ArrayList<>();
        while (rs.next()) {
            Order order = new Order();

            order.setCreateDate(rs.getDate("createDate"));
            order.setOrderId(rs.getInt("orderId"));
            order.setGoodsPic(rs.getString("goodsPic"));
            order.setGoodsName(rs.getString("goodsName"));
            order.setGoodsNumber(rs.getInt("goodsNumber"));
            order.setOrderPrice(rs.getDouble("orderPrice"));

            orderList.add(order);
        }
        return orderList;
    }
}
