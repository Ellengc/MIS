package Action;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;

import Entity.User;

public class UserAction extends BaseAction<User>{ 
   public String username;
   public String password;
   
   public String login() throws UnsupportedEncodingException{
	   
	   model=userService.geyByUsername(username);
	   
/*	   if(model==null&model.equals("")){
		   System.out.println("�û���������");
		   return "login";
	   }else{
		   if(model.password.equals(password)){
			   System.out.println("��ȷ");
			   return "login";
		   }else{
			   System.out.println("�������");
			   return "login";
		   }
	   }	*/   
		inputStream =  (model==null|!model.password.equals(password))
    			? new ByteArrayInputStream("false"
    				.getBytes("UTF-8"))
    			: new ByteArrayInputStream("true"
    				.getBytes("UTF-8"));
        if(model.password.equals(password)){
        	session.put("user", model);

        }
    	 return "login";
   }
} 
