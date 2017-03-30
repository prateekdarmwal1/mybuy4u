<div class="yk_template_slider_content_left" style="display:none;"
     id="product_detail_<?php echo $i; ?>">
    <div class="yk_template_slider_content_left_upno yk_left10no">
        <div class="yk_template_slider_content_left_tableno ">

            <div class="yk_product_details"><span class="yk_product_text">
                         Product Details</span>
            </div>


            <span class="ab_product_text"> Name </span>
            <span class="ab_product_text_1"> : </span><div class="ab_font_12">
                <?php echo $details[$modal]["NAME"]?>    <!--Bridal Lehanga-->
            </div>
            <div class="clearfix"></div>

            <span class="ab_product_text">Price </span>
            <span class="ab_product_text_1"> : </span><div class="ab_font_12">
                <?php echo $details[$modal]["COST"]?>    <!--Not Available-->
            </div>
        </div>
        <div class="clearfix"></div>

        <span class="ab_product_text">Description:</span>
        <span class="ab_product_text_1"> : </span> <div class="ab_font_12 ">
                 <span class="yk_font_12"><?php echo $details[$modal]["DESCRIPTION"]?>
                     <!--Designer Suits,Bridal Lehenga,Cotton Suits,Fish Cut Lehanga etc are alailable--></span>
        </div>


    </div>
    <div class="clear_both"></div>
</div>