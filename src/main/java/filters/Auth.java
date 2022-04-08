package filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "Auth")

public class Auth implements Filter {
    private String contextPath;

    public void init(FilterConfig config) throws ServletException {
        contextPath = config.getServletContext().getContextPath();
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        Cookie[]  user_cookies = req.getCookies();
        String email_cookie = null;
        for (Cookie ckie : user_cookies) {
            if (ckie.getName().equals("projets2cookie")) email_cookie = ckie.getValue();
        }
        System.out.print(email_cookie);
        if (email_cookie == "omar@s") chain.doFilter(request, response);
        else res.sendRedirect(contextPath + "/login.jsp");
        chain.doFilter(request, response);
    }
}
