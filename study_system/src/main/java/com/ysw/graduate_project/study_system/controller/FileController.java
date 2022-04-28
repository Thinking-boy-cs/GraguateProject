package com.ysw.graduate_project.study_system.controller;

import com.ysw.graduate_project.study_system.entity.Upload;
import com.ysw.graduate_project.study_system.entity.User;
import com.ysw.graduate_project.study_system.entity.infocast;
import com.ysw.graduate_project.study_system.service.InfoCastService;
import com.ysw.graduate_project.study_system.service.uploadService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOError;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.channels.Channel;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/23 15:17
 */

/**
 * 文件上传与下载
 */


@Controller
@RequestMapping("/file")
@Slf4j
public class FileController {

    private final String saveFilePath = System.getProperty("user.dir") + File.separator + "files";

    @Autowired
    private uploadService uploadService;


    //上传文件
    @PostMapping("/upload")
    public String upload(MultipartFile file,HttpServletRequest request) throws IOException{

        final String filename = file.getOriginalFilename();
        String type = request.getParameter("type");
        User user = (User) request.getSession().getAttribute("thisUser");
        String telNumber = user.getTelNumber();

        if(!Files.exists(Paths.get(saveFilePath))){
            Files.createDirectory(Paths.get(saveFilePath));
            log.warn("创建文件夹{}",saveFilePath);
        }
        final Path saveFile = Paths.get(saveFilePath+File.separator+filename);
        file.transferTo(saveFile);
        //favor();
        //return filename;


        //写入数据库
        favor(new Upload(),filename,telNumber,type);

        return "backSystem";
    }

    //写入数据库
    public void favor(Upload upload,String filename,String telNumber,String type){
        //写入数据库
        upload.setName(filename);
        upload.setTime(new Date());
        upload.setTelNumber(telNumber);
        upload.setType(type);
        upload.setCount(0);
        uploadService.uploadAdd(upload);
    }


    //下载文件
    @GetMapping("/{fileName}")
    public void download(@PathVariable String fileName, HttpServletResponse response) throws IOException{
        response.setContentType("application/octet-stream");
        response.addHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode(fileName,"UTF-8"));

        uploadService.uploadUpdate(fileName);

        final WritableByteChannel writableByteChannel = Channels.newChannel(response.getOutputStream());
        final FileChannel fileChannel = new FileInputStream(Paths.get(saveFilePath + File.separator +fileName).toFile()).getChannel();
        fileChannel.transferTo(0,fileChannel.size(),writableByteChannel);
        fileChannel.close();
        writableByteChannel.close();
    }



    @RequestMapping("list")
    public String uploadFavor(Model model){
        //三种方法请求作用域
        //HttpServletRequest request, Model model, ModelAndView modelAndView
        List<Upload> uploadList = uploadService.findAll();
        model.addAttribute("uploadList",uploadList);
        return "uploadList"; //return "redirect:/findAll
    }

    @RequestMapping("findUploadAll")
    @ResponseBody
    public List<Upload> findUploadAll(){
        return uploadService.findAll();
    }






}
