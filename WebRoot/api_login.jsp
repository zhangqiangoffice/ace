<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% 
Map<String,Object> map = new HashMap<String,Object>();
try {
    map.put("result", "1");
    map.put("message", "成功");
} catch (Exception e) {
    map.put("message", "系统异常");
    map.put("result", "0");
}
String str_json = "{'result':1, 'message': '成功'}";

    response.setContentType("application/json");  
    response.setCharacterEncoding("UTF-8");  
    response.setHeader("Cache-Control", "no-cache");  
    java.io.PrintWriter pw = null;  
    try{  
        pw = response.getWriter();  
        pw.write(str_json);  
    }catch (Exception e){  
        //  
    }finally{  
        pw.close();  
    }


 %>