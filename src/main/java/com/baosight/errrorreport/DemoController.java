package com.baosight.errrorreport;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class DemoController {
	@RequestMapping("/{tableName}")
	public String grid(@PathVariable String tableName, Model model) {
		return "/grid/grid";
	}
}
