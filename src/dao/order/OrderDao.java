package dao.order;

import entity.Order;

import java.sql.SQLException;
import java.util.List;

public interface OrderDao {
    /**
     * 获取订单列表
     * @return
     */
    List<Order> getOrderList() throws SQLException;
}
