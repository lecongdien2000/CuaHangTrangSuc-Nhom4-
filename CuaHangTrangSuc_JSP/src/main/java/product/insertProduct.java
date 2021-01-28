package product;

import entity.ProductsData;

@javax.servlet.annotation.WebServlet(name = "insertProduct", urlPatterns = "/insertProduct")
public class insertProduct extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
//        String typeEdit = request.getParameter("typeEdit");
//
//        if (typeEdit == null) {
//
//        } else {

            Product p = new Product();
            p.setId_product(request.getParameter("productId"));
            p.setProduct_name(request.getParameter("productName"));
            p.setPrice(Double.parseDouble(request.getParameter("productPrice")));
            p.setPicture1(request.getParameter("picture1"));
            p.setPicture2(request.getParameter("picture2"));
            p.setPicture3(request.getParameter("picture3"));
            p.setQuantity(Integer.parseInt(request.getParameter("productNumber")));
            p.setId_category(request.getParameter("type"));

//        detail
            p.setTrademark(request.getParameter("trademark"));
            p.setGender(request.getParameter("gender"));
            String attached = request.getParameter("attached");
            switch (attached) {
                case "non":
                    p.setPlain(true);
                    p.setDiamond(false);
                    p.setGemstone(false);
                    p.setPearl(false);
                    p.setECZ(false);
                    break;
                case "diamon":
                    p.setPlain(false);
                    p.setDiamond(true);
                    p.setGemstone(false);
                    p.setPearl(false);
                    p.setECZ(false);
                    break;
                case "gemStone":
                    p.setPlain(false);
                    p.setDiamond(false);
                    p.setGemstone(true);
                    p.setPearl(false);
                    p.setECZ(false);
                    break;
                case "pearl":
                    p.setPlain(false);
                    p.setDiamond(false);
                    p.setGemstone(false);
                    p.setPearl(true);
                    p.setECZ(false);
                    break;
                case "ecz":
                    p.setPlain(false);
                    p.setDiamond(false);
                    p.setGemstone(false);
                    p.setPearl(false);
                    p.setECZ(true);
                    break;
                default:
                    p.setPlain(false);
                    p.setDiamond(false);
                    p.setGemstone(false);
                    p.setPearl(false);
                    p.setECZ(false);
                    break;

            }
            switch (request.getParameter("ischild")) {
                case "yes":
                    p.setChild(true);
                    break;
                default:
                    p.setChild(false);
                    break;

            }
            p.setDescription(request.getParameter("productDescription"));

            int rs = ProductsData.insertProduct(p);
            if(rs==1){
                System.out.println("insert thanh cong");
                response.sendRedirect("admin-product-detail?id=" + p.getId_product());
            }
            else
                request.getRequestDispatcher("adminProductDetailManagement.jsp").forward(request, response);

//            request.getRequestDispatcher("adminProductDetailManagement.jsp").forward(request, response);
//response.sendRedirect("index.jsp");

    }

}
