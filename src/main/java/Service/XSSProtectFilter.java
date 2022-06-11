package Service;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")
public class XSSProtectFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {

        HttpServletResponse response = (HttpServletResponse) servletResponse;
        final XSSProtectRequestWrapper xssProtectRequestWrapper = new XSSProtectRequestWrapper((HttpServletRequest) servletRequest);
        response.addHeader("X-XSS-Protection","1;mode=block");
        filterChain.doFilter(xssProtectRequestWrapper,response);
    }

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

}
