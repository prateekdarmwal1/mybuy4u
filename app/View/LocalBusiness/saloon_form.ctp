<div class="yk_template_slider_content1" style="padding:0px;">
    <div class="ab_product_width ">
        <div class="clear_both"></div>
        <div class="div_text">
            <div class="des_heading"></div>
            <div class="clear_both"></div>
            <div class="img_text">
                <div class="fileupload fileupload-new"  data-provides="fileupload">
                    <div class="span1 finish_upload fileupload-preview thumbnail"
                         style="width:100px; height:100px; "></div>

                    <!--style="width: 430px; height: 100px;-->
                    <div class="span3 fileupload-new fileupload-exists">
                        <?php echo $this->Form->input('SaloonImage.IMAGE_PATH', array("label" => false, "class" => "finish_upload1", "type" => "file")) ?>
                    </div>
                    <!--<div class="span fileupload-new fileupload-exists">
                <?php /*echo $this->Form->input('BookImage.IMAGE_PATH', array('width' => 100, 'height' => 92,"required", "label" => false, "class" => "", "type" => "file")) */?>
            </div>-->
                    <a href="#" class="span btn " data-dismiss="fileupload">Remove</a>
                </div>
                <div class="clear_both"></div>
            </div>
        </div>
        <!--<div class="div_text">
        <div class="text_">Image:</div>
        <div class="text_box ">
            <?php /*echo $this->Form->input('BookImage.IMAGE_PATH', array("required", "label" => false, "class" => "", "type" => "file")) */?>

        </div>
        <div class="clear_both"></div>
    </div>-->
        <div class="clear_both"></div>
        <!-- <div class="span2 border pull-right">ghvsagvdavdv
         hasvdh dvhas gvddvha shdvasgv dsjhvfgsd fedsvhgsd fdjhvfah vareaer hjfvbr eahjvh jvahjg vhjgv ejhvgj hrevg sjevgj svgvr tgrtv
             grjtv g</div>-->
        <div class="div_text">
            <div class="text_ ">NAME:</div>
            <div class="text_box">
                <?php echo $this->Form->input('NAME', array("", "label" => false, "class" => "", "type" => "text")) ?>
            </div>
            <div class="clear_both"></div>
        </div>
    </div>
    <!--    <div class="ab_product_width_2 border pull-right">anil bhadjnj abjb abbj babb babuja bybyua ybyuba byayu abab</div>
    -->    <div class="clearfix"></div>
    <div class="div_text">
        <div class="right_heading ">Description:</div>
        <div class="clear_both"></div>
        <div class="text_box">
            <div class="tiny_mce_text_area">
                <?php echo $this->Form->TextArea('DESCRIPTION', array("", "label" => false, 'class' => 'tiny_mce_text_area', 'width' => "", 'height' => "")) ?>
            </div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="ab_btn_local_buisness">
        <?php echo $this->Form->submit('save', array("type" => "submit", "class" => "btn btn-primary")) ?>
        <div class="clear_both"></div>
    </div>
    <?php echo $this->Form->end(); ?>
</div>
<br/>
<br/>