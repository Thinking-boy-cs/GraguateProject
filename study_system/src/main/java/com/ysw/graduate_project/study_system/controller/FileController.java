package com.ysw.graduate_project.study_system.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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

/**
 * @author Yu shuaiwen
 * @date 2022/04/23 15:17
 */
@Controller
@RequestMapping("/file")
@Slf4j
public class FileController {

    private final String saveFilePath = System.getProperty("user.dir") + File.separator + "files";

    @PostMapping("/upload")
    public String upload(MultipartFile file) throws IOException{

        final String filename = file.getOriginalFilename();

        if(!Files.exists(Paths.get(saveFilePath))){
            Files.createDirectory(Paths.get(saveFilePath));
            log.warn("创建文件夹{}",saveFilePath);
        }
        final Path saveFile = Paths.get(saveFilePath+File.separator+filename);
        file.transferTo(saveFile);
        //favor();
        //return filename;
        return "backSystem";
    }


//    public String favor(){
//        return "backSystem";
//    }

    @GetMapping("/{fileName}")
    public void download(@PathVariable String fileName, HttpServletResponse response) throws IOException{
        response.setContentType("application/octet-stream");
        response.addHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode(fileName,"UTF-8"));

        final WritableByteChannel writableByteChannel = Channels.newChannel(response.getOutputStream());
        final FileChannel fileChannel = new FileInputStream(Paths.get(saveFilePath + File.separator +fileName).toFile()).getChannel();
        fileChannel.transferTo(0,fileChannel.size(),writableByteChannel);
        fileChannel.close();
        writableByteChannel.close();
    }


}
