<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.header id="header">
<div class="top">
  <div class="top-user">
    <div class="top-user-left ">
      <div class="body-12"><a href="#">Cá nhân</a></div>
      <div class="active body-12"><a href="#">Doanh nghiệp</a></div>
      <div class="body-12"><a href="#">Định chế tài chính</a></div>
    </div>
    <div class="div-pre-h-right">
      <div class="top-user-right body-12">
        <div class="body-12"> <a href="#">Về Agribank</a></div>
        <div class="body-12"><a href="#">Tin tức</a></div>
        <div class="body-12"><a href="#">Tuyển dụng</a></div>
        <div class="body-12"><a href="#">Hỗ trợ</a></div>
        <div class="body-12"><a href="#">Công cụ tiện ích</a></div>
        <div class="body-12"><a href="#">Liên hệ</a></div>
      </div>
      <div class="line-v"></div>
      <div>
        <a href="/">
            <@crafter.img $field="adddresss_icon_s" src=(contentModel.adddresss_icon_s!"") border=0 />
        </a>
      </div>
      <div class="line-v"></div>
      <div>
        <a href="#infor">
            <@crafter.img $field="language_icon_s" src=(contentModel.language_icon_s!"") border=0 />
        </a>
      </div>
    </div>
  </div>
</div>
</@crafter.header>