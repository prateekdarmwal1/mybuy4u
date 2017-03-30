<?php $paginator = $this->Paginator->params(); ?>
<?php if ($paginator['count'] > $paginator['limit']) { ?>
    <div class="pagination pagination-small" style="width: 400px" id="paginate">
        <ul>
            <?php
            echo $this->Paginator->first(__('First'), array('tag' => 'li', 'title' => __('First page'), 'escape' => false));
            echo $this->Paginator->numbers(array('separator' => false, 'tag' => 'li', 'currentTag' => 'span', 'currentClass' => 'active'));
            echo $this->Paginator->last(__('Last'), array('tag' => 'li', 'title' => __('Last page'), 'escape' => false));
            ?>
        </ul>
    </div>
<?php } ?>

<style>
    .pagination ul li {
        list-style: none;
    }

    .pagination ul li {
        display: inline;
    }

    .pagination ul > li > a:hover, .pagination ul > li > a:focus, .pagination ul > .active > a, .pagination ul > .active > span {
        background-color: #f5f5f5;
    }

    .pagination  ul > li > a, .pagination-small ul > li > span {
        padding: 2px 10px;
        font-size: 11.9px;
    }

    .pagination ul > li > a, .pagination ul > li > span {
        float: left;
        padding: 2px 10px;
        line-height: 20px;
        text-decoration: none;
        background-color: #fff;
        border: 1px solid #ddd;
        border-left-width: 1px;
    }

    .pagination ul > li > a:hover,.pagination ul > li > a:active {
        outline: 0;
    }

    .pagination ul {
        display: block;
        list-style-type: disc;
        -webkit-margin-before: 1em;
        -webkit-margin-after: 1em;
        -webkit-margin-start: 0px;
        -webkit-margin-end: 0px;
        -webkit-padding-start: 40px;
    }

</style>

