package service.order.impl;

import dao.order.OrderDao;
import dao.order.OrderDaoImpl;
import entity.Order;
import service.order.OrderService;

import java.sql.SQLException;
import java.util.List;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao;

    public OrderServiceImpl() {
        orderDao = new OrderDaoImpl();
    }

    @Override
    public List<Order> getOrderList() throws SQLException {
        return orderDao.getOrderList();
    }
}
