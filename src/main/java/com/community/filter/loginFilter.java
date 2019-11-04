package com.community.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "loginFilter")
public class loginFilter implements Filter {

    private FilterConfig filterConfig;

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        System.out.println("过滤器开启");
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)resp;
        HttpSession session = request.getSession();

        if(session.getAttribute("LOGIN_USER")==null
                && request.getRequestURI().indexOf("/login_employee") == -1){
            // 没有登录
            response.sendRedirect(request.getContextPath()+"/login_employee"+".jsp");
        }else{
            // 已经登录，继续请求下一级资源（继续访问）
            chain.doFilter(req, resp);
        }


    }

    public void init(FilterConfig config) throws ServletException {
        this.filterConfig = config;

    }

}
