package servlet;

import entity.UpUser;
import entity.User;
import service.upUser.UpUserService;
import service.upUser.impl.UpUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/up")
public class UpUserServlet extends HttpServlet {
    private UpUserService upUserService = new UpUserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opr = request.getParameter("opr");
        String name = request.getParameter("name");

        try {
            if (opr.equals("addUpUser")) {

            }else if (opr.equals("upUserList")) {
                this.getUpUserList(request, response);
            }else if (opr.equals("upUser") && name.equals("小秋日记本")) {
                this.getUpUserByName1(request, response);
            }else if (opr.equals("upUser") && name.equals("史蒂猪StevenPig")) {
                this.getUpUserByName2(request, response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    /**
     * 添加 up主
     * @param request
     * @param response
     */
    private void addUpUser(HttpServletRequest request, HttpServletResponse response) {
        //创建一个 upUser 对象，进行数据传递
        UpUser upUser = new UpUser();
    }

    /**
     * 查询所有 up主 信息
     * @param request
     * @param response
     */
    private void getUpUserList(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        //调用业务层，获取数据
        List<User> upUserList = upUserService.getUpUserList();
        //封装数据
        request.setAttribute("upUserList", upUserList);
        //设置显示页面
        request.getRequestDispatcher(request.getContextPath() + "/pages/up1.jsp").forward(request, response);
    }

    /**
     * 删除 up主
     * @param request
     * @param response
     */
    private void deleteUpUser(HttpServletRequest request, HttpServletResponse response) {

    }

    /**
     * 修改 up主 信息
     * @param request
     * @param response
     */
    private void updateUpUser(HttpServletRequest request, HttpServletResponse response) {

    }

    /**
     * 根据昵称查询 up主 信息
     * @param request
     * @param response
     */
    private void getUpUserByName1(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String name = request.getParameter("name");
        User user = upUserService.getUpUserByName(name);

        request.setAttribute("user", user);
        request.getRequestDispatcher(request.getContextPath() + "/pages/up1.jsp").forward(request, response);
    }

    private void getUpUserByName2(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String name = request.getParameter("name");
        User user = upUserService.getUpUserByName(name);

        request.setAttribute("user", user);
        request.getRequestDispatcher(request.getContextPath() + "/pages/up2.jsp").forward(request, response);
    }
}
