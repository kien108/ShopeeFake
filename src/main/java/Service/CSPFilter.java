package Service;

import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter("/*")
public class CSPFilter implements Filter{


    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        // TODO Auto-generated method stub
        String POLICY = "default-src 'self'";

        HttpServletResponse response = (HttpServletResponse) servletResponse;
        response.setHeader("Content-Security-Policy", POLICY);

//        response.addHeader("X-Frame-Options", "DENY");
        filterChain.doFilter(servletRequest, response);
    }

    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

}


