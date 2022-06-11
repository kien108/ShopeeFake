//Content Security Policy (CSP) Header Not Set
package Service;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class CSPFilter implements Filter {
    public static final boolean INCLUDE_MOZILLA_CSP_DIRECTIVES = true;
    @SuppressWarnings("unused")
    private FilterConfig filterConfig = null;
    private List<String> cspHeaders = new ArrayList<String>();
    private String policies = null;
    private SecureRandom prng = null;

    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        this.filterConfig = fConfig;

        try {
            this.prng = SecureRandom.getInstance("SHA1PRNG");
        } catch (NoSuchAlgorithmException e) {
            throw new ServletException(e);
        }

        // Sử dụng nhiều phương thức CSP tương ứng với nhiều trình duyệt web
        this.cspHeaders.add("Content-Security-Policy"); // - Chrome 59+ Partial Support
        this.cspHeaders.add("X-Content-Security-Policy"); // - Firefox 4-22
        this.cspHeaders.add("X-Webkit-CSP"); // - Chrome 14-2, - Safari 6, ...

        // Cấu hình các chính sách CSP
        List<String> cspPolicies = new ArrayList<String>();

        // Reset cấu hình và cài đặt là không cho tất cả tài nguyên sử dụng trong domain.
        cspPolicies.add("default-src 'none'");

        // Cấu hình script (cho phép load script từ các file trong domain, script inline, và load các file
        // từ các link bên dưới (jquery, slick))
        cspPolicies.add("script-src 'self' 'unsafe-inline' 'unsafe-eval' " +
                "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js " +
                "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js " +
                "http://code.jquery.com/jquery-migrate-1.2.1.min.js ");

        // Cấu hình script cho trình duyệt Mozilla
        if (INCLUDE_MOZILLA_CSP_DIRECTIVES) {
            cspPolicies.add("'unsafe-inline' 'unsafe-eval'");
        }

        // Cấu hình các file style được load (trong domain, inline, các link bên dưới)
        cspPolicies.add("style-src 'self' 'unsafe-inline' 'unsafe-eval' " +
                "https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css " +
                "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css " +
                "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css " +
                "https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css " +
                "https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;700&display=swap ");

        // Cho phép tải ảnh từ source trong domain
        cspPolicies.add("img-src 'self' ");

        
        // Cấu hình các nguồn có thể sử dụng HTML form, ở đây chỉ cho sử dụng trong domain
        cspPolicies.add("form-action 'self'");

        // Cấu hình font chữ, ở đây lấy nguồn từ các link bên dưới
        cspPolicies.add("font-src " +
                "https://fonts.googleapis.com " +
                "https://fonts.gstatic.com " +
                "*");

        // Cấu hình Sandbox, ngăn chặn việt mở các popup.
        cspPolicies.add("sandbox allow-forms allow-scripts allow-same-origin");

        // Cấu hình connect (fetch, WSocket,Ajax), ở đây cho phép connect ở trong domain.
        cspPolicies.add("connect-src 'self'");

        // Cấu hình các kiểu MINE cho các plugin.
        cspPolicies.add("plugin-types application/pdf application/x-shockwave-flash");
        
        // Format lại các policies
        this.policies = cspPolicies.toString().replaceAll("(\\[|\\])", "").replaceAll(",", ";")
                .trim();
    }


    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain fchain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = ((HttpServletRequest) request);
        HttpServletResponse httpResponse = ((HttpServletResponse) response);
        
       
        StringBuilder policiesBuffer = new StringBuilder(this.policies);
        // Gán tất cả các policies CSP ta vừa định nghĩa vào header
        for (String header : this.cspHeaders) {
            httpResponse.setHeader(header, policiesBuffer.toString());
        }
        fchain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Not used
    }
}

