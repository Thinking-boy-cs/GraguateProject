package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.DataItem;
import com.ysw.graduate_project.study_system.entity.Upload;
import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.service.InfoCastService;
import com.ysw.graduate_project.study_system.service.RecommendService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


/**
 * @author Yu shuaiwen
 * @date 2022/4/28 14:15
 */

@RestController
@Slf4j
@RequestMapping("recommend")
public class RecommendController {


    @Autowired
    private RecommendService recommendService;

    @RequestMapping("findCertainResource_t")
    @ResponseBody
    public List<Upload> findCertainResource_t(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.recommendType(telNumber);
    }


    @RequestMapping("findCertainResource_c")
    @ResponseBody
    public List<Upload> findCertainResource_c(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.recommendCount(telNumber);
    }


    @RequestMapping("findCertainResource_x")
    @ResponseBody
    public List<Upload> findCertainResource_x(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String sex = user.getSex();
        String degree = user.getDegree();
        String college = user.getCollege();
        return recommendService.recommendXieTong(sex,degree,college);
    }


    /**
     * 基于知识模型推荐算法
     * @param request
     * @return
     */
    @RequestMapping("findCertainResource_z")
    @ResponseBody
    public List<Upload> findCertainResource_z(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();



        double bias = 0.01;
        double e = 2.718;

        Integer totalCount = recommendService.totalCount(telNumber);

        String sex;
        Integer manCount = recommendService.manCount(telNumber);
        Integer womanCount = recommendService.womanCount(telNumber);
        double gender_w;
        if(user.getSex().equals("男")){
            gender_w=(double)manCount/totalCount;
        }else{
            gender_w=(double)womanCount/totalCount;
        }
        double man_y = gender_w*manCount+bias;
        man_y=1/(1+Math.pow(e,(-1)*man_y));
        double woman_y = gender_w*womanCount+bias;
        woman_y=1/(1+Math.pow(e,(-1)*woman_y));
        if(man_y>woman_y){
            sex="男";
        }else{
            sex="女";
        }


        String political;
        Integer partyCount = recommendService.partyCount(telNumber);
        Integer groupCount = recommendService.groupCount(telNumber);
        Integer peopleCount = recommendService.peopleCount(telNumber);
        double political_w;
        if(user.getPolitical().equals("共青团员")){
            political_w=(double)groupCount/totalCount;
        }else if(user.getPolitical().equals("群众")){
            political_w=(double)peopleCount/totalCount;
        }else {
            political_w=(double)partyCount/totalCount;
        }
        double political_party = political_w*partyCount+bias;
        political_party=1/(1+Math.pow(e,(-1)*political_party));
        double political_group = political_w*groupCount+bias;
        political_group=1/(1+Math.pow(e,(-1)*political_group));
        double political_people = political_w*peopleCount+bias;
        political_people=1/(1+Math.pow(e,(-1)*political_people));
        if((political_party>political_group)&&(political_party>political_people)){
            political="xx党员";
        }else if((political_group>political_people)&&(political_group>political_party)){
            political="共青团员";
        }else{
            political="群众";
        }

        String college;
        Integer scCollegeCount = recommendService.scCollegeCount(telNumber);
        Integer dkCollegeCount = recommendService.dkCollegeCount(telNumber);
        Integer smCollegeCount = recommendService.smCollegeCount(telNumber);
        Integer dyCollegeCount = recommendService.dyCollegeCount(telNumber);
        double college_w;
        if(user.getCollege().equals("水产学院")){
            college_w=(double)scCollegeCount/totalCount;
        }else if(user.getCollege().equals("动物科学学院")){
            college_w=(double)dkCollegeCount/totalCount;
        }else if(user.getCollege().equals("商贸学院")){
            college_w=(double)smCollegeCount/totalCount;
        }else{
            college_w=(double)dyCollegeCount/totalCount;
        }
        double sc_y=college_w*scCollegeCount+bias;
        sc_y=1/(1+Math.pow(e,(-1)*sc_y));
        double dk_y=college_w*dkCollegeCount+bias;
        dk_y=1/(1+Math.pow(e,(-1)*dk_y));
        double sm_y=college_w*smCollegeCount+bias;
        sm_y=1/(1+Math.pow(e,(-1)*sm_y));
        double dy_y=college_w*dyCollegeCount+bias;
        dy_y=1/(1+Math.pow(e,(-1)*dy_y));
        double[] college_arr={sc_y,dk_y,sm_y,dy_y};
        double college_y_max = getMax(college_arr);
        if(college_y_max==sc_y){
            college="水产学院";
        }else if(college_y_max==sm_y){
            college="商贸学院";
        }else if(college_y_max==dk_y){
            college="动物科学学院";
        }else{
            college="动物医学学院";
        }


        String degree;
        Integer undergraduateCount = recommendService.undergraduateCount(telNumber);
        Integer postgraduateCount = recommendService.postgraduateCount(telNumber);
        Integer doctorCount = recommendService.doctorCount(telNumber);
        double degree_w;
        if(user.getDegree().equals("本科")){
            degree_w=(double)undergraduateCount/totalCount;
        }else if(user.getDegree().equals("硕士")){
            degree_w=(double)postgraduateCount/totalCount;
        }else{
            degree_w=(double)doctorCount/totalCount;
        }
        double under_y=degree_w*undergraduateCount+bias;
        under_y=1/(1+Math.pow(e,(-1)*under_y));
        double post_y=degree_w*postgraduateCount+bias;
        post_y=1/(1+Math.pow(e,(-1)*post_y));
        double doctor_y=degree_w*doctorCount+bias;
        doctor_y=1/(1+Math.pow(e,(-1)*doctor_y));

        double[] degree_arr={under_y,post_y,doctor_y};
        double degree_y_max = getMax(degree_arr);
        if(degree_y_max==under_y){
            degree="本科";
        }else if(college_y_max==sm_y){
            degree="硕士";
        }else{
            degree="博士";
        }

        String type;
        Integer artCount = recommendService.artCount(telNumber);
        Integer textCount = recommendService.textCount(telNumber);
        Integer techCount = recommendService.techCount(telNumber);
        Integer hisCount = recommendService.hisCount(telNumber);
        Integer happyCount = recommendService.happyCount(telNumber);
        double type_w=0.2;
        double art_y=type_w*artCount+bias;
        art_y=1/(1+Math.pow(e,(-1)*art_y));
        double text_y=type_w*textCount+bias;
        text_y=1/(1+Math.pow(e,(-1)*text_y));
        double tech_y=type_w*techCount+bias;
        tech_y=1/(1+Math.pow(e,(-1)*tech_y));
        double his_y=type_w*hisCount+bias;
        his_y=1/(1+Math.pow(e,(-1)*his_y));
        double happy_y=type_w*happyCount+bias;
        happy_y=1/(1+Math.pow(e,(-1)*happy_y));

        double[] type_arr={art_y,tech_y,text_y,his_y,happy_y};
        double type_y_max = getMax(type_arr);
        if(type_y_max==art_y){
            type="艺术";
        }else if(type_y_max==text_y){
            type="文学";
        }else if(type_y_max==tech_y){
            type="科技";
        }else if(type_y_max==his_y){
            type="历史";
        }else{
            type="旅游";
        }

        return recommendService.recommendZhiShi(sex,political,college,degree,type);
    }

    static double getMax(double[] arr){
        double max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if (max < arr[i]) {
                max = arr[i];
            }
        }
        return max;
    }


    /**
     * 精准画像部分
     */
    @RequestMapping("totalCount")
    public Integer totalCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.totalCount(telNumber);
    }

    @RequestMapping("manCount")
    public Integer manCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.manCount(telNumber);
    }

    @RequestMapping("womanCount")
    public Integer womanCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.womanCount(telNumber);
    }

    @RequestMapping("partyCount")
    public Integer partyCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.partyCount(telNumber);
    }

    @RequestMapping("groupCount")
    public Integer groupCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.groupCount(telNumber);
    }

    @RequestMapping("peopleCount")
    public Integer peopleCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.peopleCount(telNumber);
    }

    @RequestMapping("uploadCount")
    public Integer uploadCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.uploadCount(telNumber);
    }


    @RequestMapping("undergraduateCount")
    public Integer undergraduateCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.undergraduateCount(telNumber);
    }

    @RequestMapping("postgraduateCount")
    public Integer postgraduateCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.postgraduateCount(telNumber);
    }

    @RequestMapping("doctorCount")
    public Integer doctorCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.doctorCount(telNumber);
    }


    @RequestMapping("scCollegeCount")
    public Integer scCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.scCollegeCount(telNumber);
    }

    @RequestMapping("dkCollegeCount")
    public Integer dkCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.dkCollegeCount(telNumber);
    }

    @RequestMapping("smCollegeCount")
    public Integer smCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.smCollegeCount(telNumber);
    }

    @RequestMapping("dyCollegeCount")
    public Integer dyCollegeCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.dyCollegeCount(telNumber);
    }

    @RequestMapping("artCount")
    public Integer artCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.artCount(telNumber);
    }

    @RequestMapping("textCount")
    public Integer textCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.textCount(telNumber);
    }

    @RequestMapping("techCount")
    public Integer techCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.techCount(telNumber);
    }

    @RequestMapping("hisCount")
    public Integer hisCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.hisCount(telNumber);
    }

    @RequestMapping("happyCount")
    public Integer happyCount(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();
        return recommendService.happyCount(telNumber);
    }



}
