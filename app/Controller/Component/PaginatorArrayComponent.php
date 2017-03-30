<?php
/**
 * Created by IntelliJ IDEA.
 * User: Anil
 * Date: 8/22/12
 * Time: 12:05 PM
 * To change this template use File | Settings | File Templates.
 */


/* SVN FILE: $Id$ */
/**
 * Pagination Array Component class file.
 * @subpackage    cake.cake.libs.view.helpers
 */
class PaginatorArrayComponent
{

    var $limit = 10;
    var $step = 1;
    var $options = array();


    function initialize()
    {
    }

    function beforeRender()
    {
    }

    function shutdown()
    {
    }

    function startup(& $controller)
    {
        $this->controller = & $controller;
    }


    /**
     * Sets default options for all pagination links
     *
     * @param mixed $options Default options for pagination links. If a string is supplied - it
     *   is used as the DOM id element to update. See PaginatorHelper::$options for list of keys.
     * @return void
     * @access public
     */
    function options($options = array())
    {
        if (is_string($options)) {
            $options = array('update' => $options);
        }

        if (!empty($options['paging'])) {
            if (!isset($this->params['paging'])) {
                $this->params['paging'] = array();
            }
            $this->params['paging'] = array_merge($this->params['paging'], $options['paging']);
            unset($options['paging']);
        }
        $model = $this->defaultModel();

        if (!empty($options[$model])) {
            if (!isset($this->params['paging'][$model])) {
                $this->params['paging'][$model] = array();
            }
            $this->params['paging'][$model] = array_merge(
                $this->params['paging'][$model], $options[$model]
            );
            unset($options[$model]);
        }
        $this->options = array_filter(array_merge($this->options, $options));
    }

}

?>

