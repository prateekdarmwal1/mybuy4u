<div class="yk_template_slider_content_left" style="display:none;"
     id="product_detail_<?php echo $i; ?>">
    <div class="yk_template_slider_content_left_upno yk_left10no">
        <div class="yk_template_slider_content_left_tableno ">
            <table>
                <tr>
                    <td colspan="2" class="yk_product_details"><span class="yk_product_text">
                         Product Details</span>
                    </td>
                </tr>
                <tr>
                    <td><span class="yk_product_text">
                              Name </span></td>
                    <td class="yk_font_12"><span class="yk_product_text"> : </span>
                        <?php echo $details[$modal]["NAME"]?>    <!--Bridal Lehanga-->
                    </td>
                </tr>
                <tr>
                    <td><span class="yk_product_text">Price </span></td>
                    <td class="yk_font_12"><span class="yk_product_text"> : </span>
                        <?php echo $details[$modal]["COST"]?>    <!--Not Available-->
                    </td>
                </tr>
                <tr>
                    <td><span class="yk_product_text">Brand </span></td>
                    <td class="yk_font_12"><span class="yk_product_text"> : </span>
                        <?php echo $details[$modal]['BRAND_NAME'];?>
                    </td>
                </tr>
                <tr>
                    <td><span class="yk_product_text">Cost </span></td>
                    <td class="yk_font_12"><span class="yk_product_text"> : </span>
                    <?php echo $details[$modal]['COST'];?>
                </td>
                </tr>
                <tr>
                    <td><span class="yk_product_text">Cost Unit</span></td>
                    <td class="yk_font_12"><span class="yk_product_text"> : </span>
                    <?php echo $details[$modal]['COST_UNIT'];?>
                 </td>
                </tr>
            </table>
        </div>
        <div class="yk_template_slider_content_left_description">
            <span class="yk_product_text">Description:</span>
            <br>
                            <span class="yk_font_12"><?php echo $details[$modal]["DESCRIPTION"]?>
                                <!--Designer Suits,Bridal Lehenga,Cotton Suits,Fish Cut Lehanga etc are alailable--></span>
        </div>

    </div>
    <div class="clear_both"></div>
</div>