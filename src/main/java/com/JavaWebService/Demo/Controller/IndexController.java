package com.JavaWebService.Demo.Controller;

import java.util.HashSet;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.JavaWebService.Demo.BaseClass.BaseResult;
import com.JavaWebService.Demo.BaseClass.BeanResultDto;
import com.JavaWebService.Demo.Modul.UserLoginInfo;
import com.JavaWebService.Demo.Utils.RestUtil.AtupRequestParam;
import com.JavaWebService.Demo.Utils.RestUtil.DIYJerseyClient;


@Controller
@RequestMapping("/getStart")
public class IndexController{
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String getIndex(HttpServletRequest request,Model model){
		
		return "sysLogin.page";
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value="/login",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public BaseResult login(HttpServletRequest request,Model model,HttpServletResponse response,
			@RequestParam(required = true,value="userLoginName") String userLoginName,
			@RequestParam(required = true,value="userLoginPass") String userLoginPass){
		DIYJerseyClient client = new DIYJerseyClient();
		Set<AtupRequestParam> queryParams = new HashSet<AtupRequestParam>();
		queryParams.add(new AtupRequestParam("userLoginName",userLoginName));
		queryParams.add(new AtupRequestParam("userLoginPass",userLoginPass));
		BeanResultDto<UserLoginInfo> result = client.doGetBeanReult("/loginFacade/loginCheck", queryParams, UserLoginInfo.class);
		if (result != null && result.isSuccess() == true) {
			return result;
		}
		return null;
	}
	
	@RequestMapping(value="/index",method = RequestMethod.GET)
	public String forwardToIndex(HttpServletRequest request){
		
		return "index.page";
	}
}
