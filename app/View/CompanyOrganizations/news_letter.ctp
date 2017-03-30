<div class="yk_main_content_top">
    <div class="main_content">
        <div class="vsp_main_content">
            <div class="width75" style='float:left;'>
                  <?php echo $this->element('news_letter')?>
                </br>
                </br>
                <?php include('middle.ctp')?>
            </div>
            <div class="yk_template_right_content">
                <?php echo $this->element('template_right_content')?>
            </div>
            <div class="clear_both"></div>
        </div>
        <div class="clear_both"></div>
    </div>
    <div class="clear_both"></div>
</div>

<script type="text/javascript">
    /*callTinyMCE();
    tinymce.init({
        selector: '#absurls',
        plugins: 'link image code',
        relative_urls: false
    });*/

</script>
<script type="text/javascript">
    $("#send_div").show();
    $("#send").addClass("active");
    $("#send").click(function() {
        $("#send").addClass("active");
        $("#create").removeClass("active");
        $("#upload").removeClass("active");
        $("#list").removeClass("active");
        $("#send_div").show();
        $("#create_div").hide();
        $("#upload_div").hide();
        $("#list_div").hide();
    });
    $("#create").click(function() {
        $("#create").addClass("active");
        $("#send").removeClass("active");
        $("#upload").removeClass("active");
        $("#list").removeClass("active");
        $("#create_div").show();
        $("#upload_div").hide();
        $("#send_div").hide();
        $("#list_div").hide();
    });
    $("#upload").click(function() {
        $("#upload").addClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#net").removeClass("active");
        $("#upload_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#list_div").hide();
    });
    $("#list").click(function() {
        $("#list").addClass("active");
        $("#upload").removeClass("active");
        $("#send").removeClass("active");
        $("#create").removeClass("active");
        $("#list_div").show();
        $("#send_div").hide();
        $("#create_div").hide();
        $("#upload_div").hide();
    });

</script>

