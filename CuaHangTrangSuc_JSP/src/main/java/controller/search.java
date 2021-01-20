package controller;

import entity.ProductsData;
import product.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "search", urlPatterns = "/search")
public class search extends HttpServlet {
    final static int proNumsEachPage = 6;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String keyword = request.getParameter("keyword");

       // Khoi tao String additionSql
       //duyet qua danh sach loc
        String addition;
        String pageLink = "search?keyword=" + keyword;

        int dataSize = 0;

        if(request.getParameter("filter") == null){
            addition =null;
            dataSize = ProductsData.getDataSizeByName(keyword);
            System.out.println("get filter null ");
        }
        else {
            StringBuilder filter = new StringBuilder("");
            filter.append(request.getParameter("type") + ",");
            filter.append(request.getParameter("attached") + ",");
            filter.append(request.getParameter("stage") + ",");
            filter.append(request.getParameter("gender") + ",");
            filter.append(request.getParameter("priceRange"));

            pageLink+= "&filter=true"+ "&type="+ request.getParameter("type");
            pageLink+="&attached="+ request.getParameter("attached") + "&stage=" + request.getParameter("gender") + "&priceRange=" + request.getParameter("priceRange");
            addition =filter.toString();
            dataSize = ProductsData.getFilterSize(keyword, addition);
            System.out.println("addition: " + addition);
        }

        pageLink+="&index=";

            //kiem tra xem co loc hay khong (parameter == null)
                //Neu co loc, tao subSql tuong ung, them vao additionSql
       //Chay cau sql chen them additionSql
        int index = Integer.parseInt(request.getParameter("index"));

       int totalPages = dataSize/proNumsEachPage + ((dataSize%proNumsEachPage)>0?1:0);
       int end = index*proNumsEachPage;
       int start = end - proNumsEachPage + 1;

//       System.out.println("index = " + index  + ";dataSize = "+ dataSize + ";totalPages = " +totalPages);

       Collection<Product> data = ProductsData.getDataByNameWithLimit(keyword, start, proNumsEachPage, addition).values();
        System.out.println("data size: " + data.size());
        request.setAttribute("pageLink", pageLink);
        request.setAttribute("data", data);
        request.setAttribute("key", keyword);
        request.setAttribute("index", index);
        request.setAttribute("totalPages", totalPages);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }
}
