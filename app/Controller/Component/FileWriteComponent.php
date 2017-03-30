<?php
/**
 * Created by IDEA.
 * User: Rajesh
 * Date: Oct 16, 2010
 * Time: 11:56:12 AM
 * To change this template use File | Settings | File Templates.
 * class: "FileWriteComponent" contain
 * var
 * <p>"$name" string
 * "$file_write_path"  string</p>
 * functions
 * <p>"_write_file" function use for write user file
 * "write_edit_file" function user for write edit file
 * "check_file_size" function use for validate file size
 * "_create_directory" function use for creating directory in the file path
 * "delete_file" function use for delete any file
 * </p>
 */

class FileWriteComponent extends Component
{
    /**
     * var name of component "FileWrite"
     */
    var $name = "FileWrite";

    /**
     * var string
     */
    var $file_write_path = "files";

    /**
     * <p> function take @param $file and create directory then
     *  write file to directed directory and return message
     * </p>
     * @param  $file array
     * <p> array contain information about the file uploaded </p>
     * @return string $message
     */
    function _write_file($file, $file_name)
    {
        try {
            $tmpName = $file['tmp_name'];
            if (is_uploaded_file($tmpName)) {
                $handle = fopen($tmpName, "r");
                $size = $file['size'];
                $fileData = fread($handle, $size);
                //$vpath = "http://".$_SERVER['HTTP_HOST']."/";
                //$document_root_path = $_SERVER['DOCUMENT_ROOT'];
                $document_root_path = '/home/mybuye4p/public_html';
                $this->file_write_path = $document_root_path . $this->file_write_path;

                $this->_create_directory();
                $fileName = $this->file_write_path . $file_name;
                $handle2 = fopen($fileName, "a");
                $msg = fwrite($handle2, $fileData);
                if ($msg > 0) {
                    $message = null;
                } else {
                    $message = "File Is Corrupted";
                }
                fflush($handle2);
                fclose($handle2);
                fclose($handle);
            } else {
                $message = "File Is Not Writable";
            }
            return $message;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    // <p> function "_write_file" end here </p>

    /**
     * <p>function take @param $file_path and
     * read file from provided file path then create directory then
     * write file to directed directory and return message
     * </p>
     * @param  $file_path string
     * <p> string contain path of file</p>
     * @return string $message
     */
    function write_edit_file($file_path)
    {
        try {
            $file = split("/", $file_path);
            $name = $file[count($file) - 1];
            $document_root_path = $_SERVER['DOCUMENT_ROOT'];
            //$document_root_path = $_SERVER['DOCUMENT_ROOT'].DS.'mybuy4u';
            $this->file_write_path = $document_root_path . $this->file_write_path;
            $fileName = $this->file_write_path . $name;
            if ($fileName != $file_path) {
                $this->_create_directory();
                $handle = fopen($file_path, "r");
                $size = filesize($file_path);
                $fileData = fread($handle, $size);
                $handle2 = fopen($fileName, "a");
                $msg = fwrite($handle2, $fileData);
                if ($msg > 0) {
                    $message = null;
                    fflush($handle2);
                    fclose($handle2);
                    fclose($handle);
                    $this->delete_file($file_path);
                } else {
                    $message = "File is currpted";
                }
                return $message;
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //<p> function "write_edit_file" end here</p>

    /**
     * <p> function take @params $file_size and $defined_size
     * and check file size and return message if error else null </p>
     * @param  $file_size int
     * <p> int contain size of file </p>
     * @param  $defined_size int
     * <p> int contain defined size of the file </p>
     * @return string message or mull
     */
    function check_file_size($file_size, $defined_size)
    {
        if ($defined_size < $file_size) {
            return "Selected file size is more than defined file size";
        }
        return null;
    }

    //<p> function "check_file_size" end here </p>

    /**
     * <p> function create directory according to the
     *  file_write_path provided </p>
     * @return void
     */
    function _create_directory()
    {
        try {
            if (!is_dir($this->file_write_path)) {
                mkdir($this->file_write_path, 0705, true);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //<p> function "_create_directory"end here </p>

    /**
     * <p>delete file from folder by giving path </p>
     * @param  $file_path path of the file.
     * @return void
     */
    function delete_file($file_path)
    {
        try {
            $file = new File(realpath($file_path));
            if ($file->exists()) {
                $file->delete();
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function delete_directory($dir)
    {
        try {
            //$dir = $_SERVER['DOCUMENT_ROOT'].DS.'mybuy4u'.$dir;
            $dir = $_SERVER['DOCUMENT_ROOT'].$dir;
            if(file_exists($dir)) {
                $files = array_diff(scandir($dir), array('.', '..'));
                foreach ($files as $file) {
                    (is_dir("$dir/$file")) ? delete_directory("$dir/$file") : unlink("$dir/$file");
                }
                return rmdir($dir);
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    //<p> function "delete_file" end here </p>
}