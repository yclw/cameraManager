#pragma once

#include <opencv2/opencv.hpp>
#include <iostream>

class Camera {
public:
    /**
     * @brief 相机构造函数
     * @param id 相机ID
     */
    Camera(int id) : camera_id(id), frame_width(0), frame_height(0), fps(0), is_capturing(false) {
        if (!initializeCamera()) {
            std::cerr << "Failed to initialize camera with ID: " << camera_id << std::endl;
            throw std::runtime_error("Failed to initialize camera");
        }
    }

    /**
     * @brief 虚析构函数，确保派生类的析构函数能够正确调用
     */
    virtual ~Camera() {
        stopCapture();
        releaseCamera();
    }

    /**
     * @brief 获得一帧图像
     * @return 捕获的图像帧,必须转为cv::Mat类型。
     * @note 派生类必须实现此方法，并确保返回有效的图像帧。
     */
    virtual cv::Mat captureImages() = 0;

    /**
     * @brief 开启相机采集图像
     * @note 派生类必须实现此方法，并确保相机正确开启采集图像。
     */
    virtual void startCapture() = 0;

    /**
     * @brief 关闭相机采集图像
     * @note 派生类必须实现此方法，并确保相机正确关闭采集图像。
     */
    virtual void stopCapture() = 0;

protected:
    int camera_id;        // 相机ID
    int frame_width;  // 帧宽度，默认值为0
    int frame_height; // 帧高度，默认值为0
    int fps;          // 帧率，默认值为0
    bool is_capturing = false; // 是否正在采集图像
    std::mutex mutex_; // 用于保护共享资源的互斥锁

    /**
     * @brief 初始化相机
     * @return 初始化是否成功
     * @note 派生类必须实现此方法，并确保相机正确初始化。
     */
    virtual bool initializeCamera() = 0;

    /**
     * @brief 释放相机资源
     * @note 派生类必须实现此方法，并确保所有资源被正确释放。
     */
    virtual void releaseCamera() = 0;
};