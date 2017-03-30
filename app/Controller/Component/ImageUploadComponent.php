<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Oct 16, 2010
 * Time: 12:03:18 PM
 * To change this template use File | Settings | File Templates.
 */

/**
 *
 * <p>ImageUploadComponent used to upload image file to server</p>
 */
class ImageUploadComponent extends Component {

    /**
     * @var string name of the component
     */
    var $name = "ImageUpload";

    /**
     * @var string default image path webroot/img .</p>
     */
    var $image_write_path = "img";

    /**
     * @var int thumbnail image size of the file used in the application
     */
    var $defined_size = 2097152;

    //2 MB

    /**
     * @var array Component array, Component used in this component class
     */
    var $components = array("FileWrite");

    /**
     * <p>check image type being uploaded.</p>
     * @param  $type string image type to be upload
     * @return bool value of the type exist
     */
        function _check_image_type($type) {
            try {
                $type = strtolower($type);
                $types = array("gif", "jpg", "jpeg", "png", "pjpeg", "x-png", "tiff", "x-tiff");
                $val = in_array($type, $types, true);
                return $val;
            } catch (Exception $exception) {
                echo $exception->getMessage();
            }
        }

    /**
     * <p>used to validate image file</p>
     * @param  $data image file data
     * @param  $model_name model name used to get file size
     * @return string message
     */
    function _validate_image($data, $model_name) {
        try {
            if (empty ($data[$model_name]["file"]["tmp_name"])) {
                $message = "Please Select Image To Upload";
            } else {
                $fileName = $data[$model_name]["file"]["name"];
                $tempFile = new File($fileName);
                $ext = $tempFile->ext();
                if ($this->_check_image_type($ext)) {
                    $size = $data[$model_name]["file"]["size"];
                    $message = $this->FileWrite->check_file_size($size, $this->defined_size);
                } else {
                    $message = "Please Select Proper Image File Format";
                }
            }
            return $message;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    /**
     * <p>used to write image file</p>
     * @param  $data  image file data
     * @param  $model_name   model name used to get image file
     * @return string message
     */


    function write_image_with_file($file, $file_name) {
        try {
            $this->FileWrite->file_write_path = $this->image_write_path;
            $message = $this->FileWrite->_write_file($file, $file_name);
            return $message;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function delete_file($file_path) {
        try {
            $this->FileWrite->delete_file($file_path);
        }catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}