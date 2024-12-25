#pragma once

#include <vector>
#include <unordered_map>
#include <future>
#include <mutex>
#include <opencv2/opencv.hpp>

#include "class_camera.h"

class CameraManager {
public:
    /**
     * @brief 构造函数，初始化相机数量和相机对象指针数组
     * @param num_cameras 相机数量
     * @param cameras 相机对象指针数组
     * @return 无
     */
    CameraManager(int num_cameras, std::vector<Camera*> cameras);

    /**
     * @brief 析构函数，释放相机对象指针数组
     * @return 无
     */
    ~CameraManager();

    /**
     * @brief 启动所有相机的图像采集
     * @return 无
     */
    void startCapture();

    /**
     * @brief 停止所有相机的图像采集
     * @return 无
     */
    void stopCapture();

    /**
     * @brief 获取所有相机的一帧图像，使用多线程异步获取图像
     * @return 无
     */
    void getAllCapture();

    /**
     * @brief 获取指定相机一帧图像
     * @param camera_id 相机ID
     * @return 无
     */
    void getCapture(int camera_id);

    /**
     * @brief 获取所有相机图像，使用最大帧率
     * @return 无
     */
    void getAllCaptureMaxFps(std::promise<cv::Mat> promise);

private:
    int num_cameras; // 相机数量
    std::vector<Camera*> cameras; // 相机对象指针数组
    std::vector<cv::Mat> imgs; // 图像数组
    cv::Mat img; // 图像
    std::mutex mutex_; // 互斥锁
    std::vector<int> order; // 每论获取图像的相机ID
};