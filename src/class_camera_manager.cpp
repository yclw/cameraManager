#include "class_camera_manager.h"

CameraManager::CameraManager(int num_cameras, std::vector<Camera*> cameras)
    : num_cameras(num_cameras), cameras(cameras) {}

CameraManager::~CameraManager() {
    for (auto& camera : cameras) {
        camera->stopCapture();
        delete camera;
    }
}

void CameraManager::startCapture() {
    std::lock_guard<std::mutex> lock(mutex_);
    for (auto& camera : cameras) {
        camera->startCapture();
    }
}

void CameraManager::stopCapture() {
    std::lock_guard<std::mutex> lock(mutex_);
    for (auto& camera : cameras) {
        camera->stopCapture();
    }
}

void CameraManager::getAllCapture() {
    std::vector<std::future<cv::Mat>> futures;
    futures.reserve(num_cameras);

    {
        std::lock_guard<std::mutex> lock(mutex_);
        imgs.clear();
        for (auto& camera : cameras) {
            futures.emplace_back(std::async(std::launch::async, &Camera::captureImages, camera));
        }
    }

    for (auto& future : futures) {
        std::lock_guard<std::mutex> lock(mutex_);
        imgs.emplace_back(future.get());
    }
}

void CameraManager::getCapture(int camera_id) {
    std::lock_guard<std::mutex> lock(mutex_);
    img = cameras[camera_id]->captureImages();
}