package servlet;

import entity.Goods;
import entity.GoodsDetails;
import entity.Order;
import entity.User;
import service.goods.GoodsService;
import service.goods.impl.GoodsServiceImpl;
import service.goodsDetails.GoodsDetailsService;
import service.goodsDetails.impl.GoodsDetailsServiceImpl;
import service.order.OrderService;
import service.order.impl.OrderServiceImpl;
import service.user.UserService;
import service.user.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/goods")
public class GoodsServlet extends HttpServlet {
    private GoodsService goodsService = new GoodsServiceImpl();
    private GoodsDetailsService goodsDetailsService = new GoodsDetailsServiceImpl();
    private OrderService orderService = new OrderServiceImpl();
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opr = request.getParameter("opr");
        try {
            if (opr.equals("goodsList")) {
                this.getGoodsList(request, response);
            }else if (opr.equals("goodsDetails")) {
                this.getGoodsDetails(request, response);
            }else if (opr.equals("addGoodsOrder")) {
                this.addGoodsOrder(request, response);
            }else if (opr.equals("orderList")) {
                this.getOrderList(request, response);
            }else if (opr.equals("goodsByCategory")) {
                this.getGoodsByCategory(request, response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void getGoodsList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        List<Goods> goodsList = goodsService.getGoodsList();
        request.setAttribute("goodsList", goodsList);
        User user = userService.login(phone, password);
        request.setAttribute("user", user);
        request.getRequestDispatcher(request.getContextPath() + "/pages/shop.jsp").forward(request, response);
    }

    private void getGoodsDetails(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        Integer goodsId = Integer.valueOf(request.getParameter("goodsId"));
        Goods goods = goodsService.getGoodsDetails(goodsId);
        GoodsDetails goodsDetails = goodsDetailsService.getGoodsDetailsImg(goodsId);

        List<String> imgs = new ArrayList<>();
        if (goodsDetails.getPic1() != null) {
            imgs.add(goodsDetails.getPic1());
        }
        if (goodsDetails.getPic2() != null) {
            imgs.add(goodsDetails.getPic2());
        }
        if (goodsDetails.getPic3() != null) {
            imgs.add(goodsDetails.getPic3());
        }
        if (goodsDetails.getPic4() != null) {
            imgs.add(goodsDetails.getPic4());
        }
        if (goodsDetails.getPic5() != null) {
            imgs.add(goodsDetails.getPic5());
        }
        if (goodsDetails.getPic6() != null) {
            imgs.add(goodsDetails.getPic6());
        }

        request.setAttribute("goods", goods);
        request.setAttribute("imgs", imgs);
        request.getRequestDispatcher(request.getContextPath() + "/pages/goodsDetails.jsp").forward(request, response);
    }

    private void addGoodsOrder(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        Integer goodsId = Integer.valueOf(request.getParameter("goodsId"));
        goodsService.addGoodsOrder(goodsId);
        List<Order> orderList = orderService.getOrderList();
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher(request.getContextPath() + "/pages/orderCenter.jsp").forward(request, response);
    }

    private void getOrderList(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        List<Order> orderList = orderService.getOrderList();
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher(request.getContextPath() + "/pages/orderCenter.jsp").forward(request, response);
    }

    private void getGoodsByCategory(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String categoryName = request.getParameter("categoryName");
        List<Goods> goodsList = goodsService.getGoodsByCategoryName(categoryName);
        request.setAttribute("goodsList", goodsList);
        request.getRequestDispatcher(request.getContextPath() + "/pages/shop.jsp").forward(request, response);
    }
}
