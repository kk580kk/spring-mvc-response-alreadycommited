package com.baosight.errrorreport;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/data")
public class DemoController {
    @RequestMapping("/{tableName}")
    public ModelAndView grid(@PathVariable String tableName, HttpServletRequest request) {
        ModelAndView view = new ModelAndView("forward:/grid/grid.jsp");
        return view;
    }
}
