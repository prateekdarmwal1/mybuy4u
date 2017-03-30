<div class="yk_template_slider_content_left" style="display:none;"
     id="product_detail_<?php echo $i; ?>">
    <div class="yk_template_slider_content_left_upno yk_left10no">
        <div class="yk_template_slider_content_left_tableno ">
            <div class="yk_product_details">
                <span class="yk_product_text">
                    NGO Details
                </span>
            </div>

            <span class="ab_product_text">Name </span>
            <span class="ab_product_text_1"> : </span>
            <div class="ab_font_12">
                 <?php echo $details["Ngo"]["NAME"]?>
             </div>

            <div class="clearfix"></div>
                <span class="ab_product_text">Description</span>
                <span class="ab_product_text_1"> : </span>
                <div class="ab_font_12">
                    <?php echo $details["Ngo"]["DESCRIPTION"]?>    <!--Not Available-->
                </div>
                <div class="clearfix"></div>

                <span class="ab_product_text">Mobile </span>
                <span class="ab_product_text_1"> : </span>
                <div class="ab_font_12">
                    <?php echo $details["Ngo"]["MOBILE_NUMBER"]?>    <!--Not Available-->
                </div>
                <div class="clearfix"></div>

        </div>
    </div>

    <div class="clear_both"></div>
</div>