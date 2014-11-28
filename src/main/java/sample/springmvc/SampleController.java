package sample.springmvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sample.springmvc.component.SpecialChar;
import sample.springmvc.component.UserInfo;

@Controller
public class SampleController {
    @Autowired
    UserInfo uInfo;
    
    @Autowired
    SpecialChar SpecialChar;

    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }

    @RequestMapping("/input")
    public ModelAndView input() {
        ModelAndView mav = new ModelAndView("input");
        mav.addObject("userInfo", uInfo);
        return mav;
    }

    @RequestMapping("/output")
    public ModelAndView output(@ModelAttribute("userInfo") UserInfo userInfo) {
        ModelAndView mav = new ModelAndView("output");
        uInfo.setUsername(userInfo.getUsername());
        uInfo.setPassword(userInfo.getPassword());
        mav.addObject("userInfo", uInfo);
        mav.addObject("specialChar", SpecialChar);
        return mav;
    }
}
