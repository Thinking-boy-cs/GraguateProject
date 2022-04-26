package com.ysw.graduate_project.study_system.service;

import com.ysw.graduate_project.study_system.dao.DataItemDao;
import com.ysw.graduate_project.study_system.entity.DataItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Yu shuaiwen
 * @date 2022/04/10 22:41
 */

@Service
@Slf4j
public class DataItemServiceImpl implements DataItemService {

    @Resource
    private DataItemDao dataItemDao;

    @Override
    public List<DataItem> showDataItem() {
        return dataItemDao.showDataItem();
    }

    @Override
    public List<DataItem> showCollege() {
        return dataItemDao.showCollege();
    }

    @Override
    public List<DataItem> showSex() {
        return dataItemDao.showSex();
    }

    @Override
    public List<DataItem> showDegree() {
        return dataItemDao.showDegree();
    }


//    public Map<String,Object> showDataItem(){
//        //获得数据库数据
//        List<DataItem> thisData =  dataItemDao.showDataItem();
//
//        //创建接收数组
//        Map<String,Object> thisMap=new HashMap<String,Object>();
//        String[] nameData = new String[thisData.size()];
//        Double[] valueData = new Double[thisData.size()];
//
//        //遍历数据
//        int i=0;
//        for(DataItem dataItem:thisData){
//            nameData[i] = dataItem.getName();
//            valueData[i] = dataItem.getValue();
//            log.info("This is "+nameData[i]+" "+valueData[i]);
//            i++;
//        }
//
//        //存入Map包装
//        thisMap.put("name",nameData);
//        thisMap.put("value",valueData);
//
//        return thisMap;
//    }

//     @Override
//    public Map<String,Object> getXiaoliangList() {
//        // TODO Auto-generated method stub
//        /*创建一个集合来接受数据库数据*/
//        List<Xiaoliang> xlist = new ArrayList<Xiaoliang>();
//        /*创建一个map集合来装月份和销量这两个数组*/
//        Map<String,Object> xmap=new HashMap<String,Object>();
//        /*接受数据*/
//        xlist=xiaoliangDao.getXiaoliangList();
//        /*创建装载月销量数组*/
//        int[] xxdata=new int[xlist.size()];
//        /*创建装载月份数组*/
//        String[] xdata=new String[xlist.size()];
//        /*定义数组下标*/
//        int i=0;
//        /*遍历数据库数据*/
//        for (Xiaoliang xiaoliang : xlist) {
//            /*将销量放入数组*/
//            xxdata[i]=xiaoliang.getXcount();
//            /*将月份放入数组*/
//            xdata[i]=xiaoliang.getXname();
//            i++;
//        }
//        /*将两个数组存入集合中*/
//        xmap.put("xname", xdata);
//        xmap.put("xcount", xxdata);
//        return xmap;
//    }

}
