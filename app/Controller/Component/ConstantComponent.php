<?php
/**
 * Created by IntelliJ IDEA.
 * User: Rajesh
 * Date: 2/8/11
 * Time: 5:13 PM
 * To change this template use File | Settings | File Templates.
 */
 
class ConstantComponent extends Component {

    var $user_name_id_role = "OWNER_NAME_ID_ROLE";

    var $components = array("Session");

     var $user_image_height = 70;

    var $user_image_width = 70;

    var $user_image_path = "images/user_profile_images/";

    function get_session_user_id() {
        try {
            $user = $this->Session->read('OWNER_NAME_ID_ROLE');
            if (!empty($user)) {
                $user = explode(",", $user);
                return $user[1];
            } else return null;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_session_user_role() {
        try {
            $user = $this->Session->read($this->user_name_id_role);
            if (!empty($user)) {
                $user = explode(",", $user);
                return $user[2];
            } else return null;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }

    function get_session_user_name() {
        try {
            $user = $this->Session->read($this->user_name_id_role);
            if (!empty($user)) {
                $user = explode(",", $user);
                return $user[0];
            } else return null;
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
    }
}