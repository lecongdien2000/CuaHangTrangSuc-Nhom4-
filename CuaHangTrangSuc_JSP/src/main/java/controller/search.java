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
//  Khoi tao String additionSql
//  duyet qua danh sach loc
        String[] listFilter;
        String pageLink ;
        int dataSize = 0;
//        if(request.getParameter("filter") == null){
//            listFilter =null;
//            dataSize = ProductsData.getDataSizeByName(keyword);
//            System.out.println("get filter null ");
//            pageLink = "search?keyword=" + keyword;
//        }
//        else {
              listFilter = new String[6];
              listFilter[0] = request.getParameter("type");
              listFilter[1] = request.getParameter("attached");
              listFilter[2] = request.getParameter("stage");
              listFilter[3] = request.getParameter("gender");
              String priceRange = request.getParameter("priceRange");
              if(priceRange != null){
                  System.out.print(priceRange);
                  listFilter[4] = priceRange.substring(0, priceRange.lastIndexOf(","));
                  listFilter[5] = priceRange.substring(priceRange.lastIndexOf(",")+1);
              }
              else{
                  listFilter[4] = null;
                  listFilter[5] = null;
              }
            System.out.print("array");
            for(int i =0; i<listFilter.length; i++){
                System.out.print(listFilter[i] + "-");
            }

//            if(keyword!= null)
//                pageLink = "search?keyword=" + keyword + "&filter=true";
//            else
//            pageLink= "search?filter=true";
        if(keyword!= null)
            pageLink = "search?keyword=" + keyword +"&";
        else
            pageLink= "search?";
            if(request.getParameter("type") != null)
                pageLink+= "type=" + request.getParameter("type");
            if(request.getParameter("attached") != null)
                pageLink+= "&attached="+ request.getParameter("attached");
            if(request.getParameter("stage") != null)
                pageLink+= "&stage=" + request.getParameter("stage");
            if(request.getParameter("gender") != null)
                pageLink+="&gender=" + request.getParameter("gender");
            if(request.getParameter("priceRange") != null)
                pageLink+= "&priceRange=" + request.getParameter("priceRange");

            dataSize = ProductsData.getFilterSize(keyword, listFilter);
//            System.out.println("addition: " + addition);
//        }

        pageLink+="&index=";

            //kiem tra xem co loc hay khong (parameter == null)
                //Neu co loc, tao subSql tuong ung, them vao additionSql
       //Chay cau sql chen them additionSql
        int index = Integer.parseInt(request.getParameter("index"));
       int totalPages = dataSize/proNumsEachPage + ((dataSize%proNumsEachPage)>0?1:0);
       int end = index*proNumsEachPage;
       int start = end - proNumsEachPage + 1;

//Lay du lieu de tra ve trang jsp
       Collection<Product> data = ProductsData.getDataByNameWithLimit(keyword, start, proNumsEachPage, listFilter).values();
        System.out.println("data size: " + data.size());
        request.setAttribute("pageLink", pageLink);
        request.setAttribute("data", data);
        if(keyword == null )
            request.setAttribute("key", "null");
        else
            request.setAttribute("key", keyword);
        request.setAttribute("index", index);
        request.setAttribute("totalPages", totalPages);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }
}
