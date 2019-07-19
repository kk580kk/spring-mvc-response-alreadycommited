package com.baosight.errrorreport;

import org.springframework.boot.autoconfigure.web.servlet.error.ErrorViewResolver;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Service
public class PlatErrorViewResolverImpl implements ErrorViewResolver {

    @Override
    public ModelAndView resolveErrorView(HttpServletRequest request, org.springframework.http.HttpStatus status, Map<String, Object> model) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>() {{
            put("iplat_msgKey", model.get("status").toString());
            put("iplat_msg", model.get("error"));
        }};
        return new ModelAndView("EP/EP01", hashMap);
    }
}