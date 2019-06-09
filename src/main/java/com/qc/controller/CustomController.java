package com.qc.controller;

import com.qc.bean.Custom;
import com.qc.service.CustomService;
import com.qc.utils.Page;
import com.qc.utils.ResultJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author:jiege
 * @Date: 2019/6/2 15:14
 */

@Controller
public class CustomController {
    @Autowired
    private CustomService customService;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    @RequestMapping("/queryAction")
    public String queryAction(){
        return "QueryAction";
    }

    @RequestMapping("/add")
    public String add(){
        return "add";
    }

    @ResponseBody
    @RequestMapping("/doAdd")
    public Object doAdd(Custom custom){
        customService.doAdd(custom);
        ResultJson resultJson = new ResultJson();
        resultJson.setSuccessful(true);
        return resultJson;

    }

    @ResponseBody
    @RequestMapping("/doUpdate")
    public Object doUpdate(Custom custom){
        customService.doUpdate(custom);
        ResultJson resultJson = new ResultJson();
        resultJson.setSuccessful(true);
        return resultJson;

    }

    @ResponseBody
    @RequestMapping("/doRegister")
    public Object doRegister(String name,String password){
        ResultJson resultJson = new ResultJson();
        try {
            Map<String,Object> map = new HashMap<String, Object>();
            map.put("name",name);
            map.put("password",password);
            int isExist = customService.register(map);
            resultJson.setSuccessful(true);
        } catch (Exception e) {
            resultJson.setMessage("注册失败!");
            e.printStackTrace();
        }
        return resultJson;
    }

    @RequestMapping("/doLogin")
    public String doLogin(@RequestParam(value = "name") String name,
                          @RequestParam(value = "password") String password){
        int i = customService.login(name,password);
        String result = "";
        if (i>0){
           result = "QueryAction";
        }else {
            result = "login";
        }
        return result;
    }

    @ResponseBody
    @RequestMapping("/doQueryAction")
    public Object QueryAction(HttpServletResponse response){
        ResultJson resultJson = new ResultJson();
        Page page = new Page();
       // Gson gson = new Gson();
        List<Custom> datas = null;
        try {
            datas = customService.queryList();
            //session.setAttribute("datas",datas);
            //resultJson.setDatas(datas);
           // resultJson.setSuccessful(true);

            //String json = gson.toJson(resultJson);

            //response.getWriter().write(json);
        } catch (Exception e) {
            resultJson.setSuccessful(false);
            e.printStackTrace();
        }

        return datas;
    }

    @RequestMapping("/deleteCustomById")
    public String deleteCustomByid(@RequestParam(value = "id") String id){
        customService.deleteCustomByid(id);
        return "QueryAction";
    }

    @RequestMapping("/updateCustom")
    public String updateCustom(@RequestParam(value = "id") String id, HttpServletRequest request){
        Custom custom = customService.QueryCustomById(id);
        request.setAttribute("custom",custom);
        return "update";
    }



}
