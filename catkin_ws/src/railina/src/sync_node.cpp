#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>
#include <image_transport/image_transport.h>
using namespace sensor_msgs;
using namespace message_filters;
class Publisher
{
    image_transport::Publisher image1_pub_;
    image_transport::Publisher image2_pub_;
    image_transport::Publisher image3_pub_;

    image_transport::ImageTransport itnode_;

public:
    Publisher(ros::NodeHandle& handle) : itnode_ (image_transport::ImageTransport(handle))
    {
        image1_pub_ = itnode_.advertise("/multicamera_sync/camera1", 10);
        image2_pub_ = itnode_.advertise("/multicamera_sync/camera2", 10);
        image3_pub_ = itnode_.advertise("/multicamera_sync/camera3", 10);

    }
    void Publish(const ImageConstPtr& image1, const ImageConstPtr& image2, const ImageConstPtr& image3)
    {
        image1_pub_.publish(image1);
        image2_pub_.publish(image2);
        image3_pub_.publish(image3);
    }
};
static Publisher* publisher;
void callback(const ImageConstPtr& image1, const ImageConstPtr& image2, const ImageConstPtr& image3)
{
    publisher->Publish(image1, image2, image3);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "sync_node");

    ros::NodeHandle nh;
    publisher = new Publisher(nh);

    message_filters::Subscriber<Image> image1_sub(nh, "/multi/camera_1/image_raw", 1);
    message_filters::Subscriber<Image> image2_sub(nh, "/multi/camera_2/image_raw", 1);
    message_filters::Subscriber<Image> image3_sub(nh, "/multi/camera_3/image_raw", 1);

    //не работает в рантайме
    TimeSynchronizer<Image, Image, Image> sync(image1_sub, image2_sub, image3_sub, 10);
    sync.registerCallback(boost::bind(&callback, _1, _2, _3));

    ros::spin();
    delete publisher;
    return 0;
}