
#include <string>
#include <vector>

// library for processing camera data for gazebo / ros conversions
#include <gazebo_plugins/gazebo_ros_camera_utils.h>
#include <gazebo_plugins/MultiCameraPlugin.h>

namespace gazebo
{
    class CameraAsync : public MultiCameraPlugin
    {
        /// \brief Constructor
        /// \param parent The parent entity, must be a Model or a Sensor
    public: CameraAsync();

        /// \brief Destructor
    public: ~CameraAsync();

        /// \brief Load the plugin
        /// \param take in SDF root element
    public: void Load(sensors::SensorPtr _parent, sdf::ElementPtr _sdf);

        std::vector<GazeboRosCameraUtils*> utils;

        /// \brief Update the controller
    protected: virtual void OnNewFrame(const unsigned char *_image,
                                       size_t _camNumber,
                                       unsigned int _width, unsigned int _height,
                                       unsigned int _depth, const std::string &_format);

        /// Bookkeeping flags that will be passed into the underlying
        /// GazeboRosCameraUtils objects to let them share state about the parent
        /// sensor.
    private: boost::shared_ptr<int> image_connect_count_;
    private: boost::shared_ptr<boost::mutex> image_connect_count_lock_;
    private: boost::shared_ptr<bool> was_active_;
    };
}
