
<%@page import="admin.data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        data ns = new data();
        
        boolean ekDurum = (request.getParameter("duzenle") == null);
      if(!ekDurum){
          // vt sorgusu
         // ResultSet rss = null;
        
          String aid = request.getParameter("haberEkle");
          String durum = request.getParameter("durum");
          String baslik = request.getParameter("baslik");
          String detay = request.getParameter("detay");
          
          
          try {
              
           int rss = ns.baglan().executeUpdate("insert into haberler values (null, '"+durum+"','"+baslik+"', '"+detay+"', now())");
          if(rss>0){
              response.sendRedirect("haberler.jsp");
             System.err.println("Ekleme Hatası : Ekleme Başarılı");
          }
          }catch (Exception ex) {
              System.err.println("Ekleme Hatası :" + ex);
             
          
          }
      }      
  %>


<%    response.sendRedirect("haberler.jsp");%>