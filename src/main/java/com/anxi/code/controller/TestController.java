package com.anxi.code.controller;

import com.anxi.code.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 测试Controller
 */
@Controller
@RequestMapping(value = "${adminPath}/test")
public class TestController {

    @Resource
    private TestService testService;

    /**
     * 显示列表页
     */
    @RequestMapping(value = {"list", ""})
    public String list(HttpServletRequest request, HttpServletResponse response, Model model) {
        model.addAttribute("data", testService.test());
        return "modules/test/testList";
    }

    /**
     * 获取列表数据（JSON）
     */
    @ResponseBody
    @RequestMapping(value = "listData")
    public List<String> listData(HttpServletRequest request, HttpServletResponse response, Model model) {
        return testService.test();
    }

}
