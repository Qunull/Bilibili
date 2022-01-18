package servlet;

import entity.User;
import service.user.UserService;
import service.user.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String opr = request.getParameter("opr");
        try {
            if (opr.equals("doLogin")) { //用户登录
                this.login(request, response);
            }else if (opr.equals("userInfo")) { //用户主页
                this.getUserInfo(request, response);
            }else if (opr.equals("register")) { //注册
                this.register(request, response);
            }else if (opr.equals("personal")) {
                this.getUserInfo2(request, response);
            }else if (opr.equals("updateInfo")) {
                this.updateUser(request, response);
            }else if (opr.equals("userList")) {
                this.getUserList(request, response);
            }else if(opr.equals("toUserModify")){
                String userId = request.getParameter("userId");
                User user = userService.getUserById(Integer.valueOf(userId));
                request.setAttribute("user",user);
                request.getRequestDispatcher("/jsp/usermodify.jsp").forward(request,response);
            }else if (opr.equals("uModifySave")){
                String userId = request.getParameter("userId");
                String userName = request.getParameter("userName");
                String phone = request.getParameter("phone");
                String gender = request.getParameter("gender");
                String birthday = request.getParameter("birthday");
                String userRole = request.getParameter("userRole");
                String signature = request.getParameter("signature");
                String fans = request.getParameter("fans");

                User user = userService.getUserById(Integer.valueOf(userId));
                user.setUserName(userName);
                user.setPhone(phone);
                user.setGender(Integer.valueOf(gender));
                user.setBirthday(birthday);
                user.setUserRole(Integer.valueOf(userRole));
                user.setFans(Integer.valueOf(fans));
                user.setSignature(signature);

                if (userService.updateUser(user) > 0){
                    out.print(true);
                }
            }else if (opr.equals("delete")){
                String userId = request.getParameter("userId");
                if (userService.deleteUser(Integer.valueOf(userId)) > 0){
                    out.print(true);
                }
            }else if (opr.equals("home")) {
                this.toHome(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        out.flush();
        out.close();
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        User user = userService.login(phone, password);
        if (user == null) {
            String msg = "用户名或密码错误！";
            request.setAttribute("msg", msg);
            response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
        }else {
            String msg = "登录成功！";
            request.setAttribute("msg", msg);
            request.setAttribute("user", user);
            request.getRequestDispatcher(request.getContextPath() + "/pages/homePage.jsp").forward(request, response);
        }
    }

    private void getUserInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        User user = userService.login(phone, password);
        request.setAttribute("user", user);
        request.getRequestDispatcher(request.getContextPath() + "/pages/person.jsp").forward(request, response);
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userName = request.getParameter("userName");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        if (userService.register(userName, phone, password)) {
            String msg = "注册成功！";
            request.getRequestDispatcher(request.getContextPath() + "/pages/login.jsp").forward(request, response);
        }else {
            String msg = "该昵称或手机号已存在！";
            response.sendRedirect(request.getContextPath() + "/pages/register.jsp");
        }
    }

    private void getUserInfo2(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        User user = userService.login(phone, password);
        request.setAttribute("user", user);
        request.getRequestDispatcher(request.getContextPath() + "/pages/myinfo.jsp").forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        String userName = request.getParameter("userName");
        String signature = request.getParameter("signature");
        //String gender = request.getParameter("gender");
        String birthday = request.getParameter("birthday");

        User user = userService.login(phone, password);
        user.setUserName(userName);
        user.setSignature(signature);
        //user.setGender(Integer.valueOf(gender));
        user.setBirthday(birthday);

        request.setAttribute("user", user);
        request.getRequestDispatcher(request.getContextPath() + "/pages/person.jsp").forward(request, response);
    }

    //查询所有用户信息
    private void getUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String userId = request.getParameter("userId");
        String userName = request.getParameter("userName");

        List<User> userList = userService.getUserList(userName, userId);

        request.setAttribute("userList", userList);

        request.setAttribute("userId", userId); // 用于标题条件的回显
        request.setAttribute("userName", userName);

        request.getRequestDispatcher("/jsp/userList.jsp").forward(request, response);
    }

    private void toHome(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        User user = userService.login(phone, password);
        request.setAttribute("user", user);
        request.getRequestDispatcher(request.getContextPath() + "/pages/homePage.jsp").forward(request, response);
    }
}
