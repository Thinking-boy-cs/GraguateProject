package com.ysw.graduate_project.study_system.utils;

/**
 * @author Yu shuaiwen
 * @date 2022/5/5 9:00
 */
public class MaxTool {

    double getMax(double[] arr){
        double max = arr[0];
        for (int i = 1; i < arr.length; i++) {
            if (max < arr[i]) {
                max = arr[i];
            }
        }
        return max;
    }
}
