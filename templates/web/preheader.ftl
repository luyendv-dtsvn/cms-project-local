<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.header id="header">
<div class="top">
  <div class="top-user">
    <div class="top-user-left ">
        <#-- Kiểm tra xem group buttonleft_o có tồn tại và có item hay không -->
        <#if contentModel.buttonleft_o.item?? && contentModel.buttonleft_o.item?has_content>
            <#list contentModel.buttonleft_o.item as leftBtn>
                <a href="#${leftBtn.link_left_s!''}" class="body-12">
                    ${leftBtn.label_left_s!''}
                </a>
            </#list>
        </#if>

    </div>
    <div class="div-pre-h-right">
      <div class="top-user-right body-12">
       <#-- Kiểm tra xem group buttonright_o có tồn tại và có item hay không -->
        <#if contentModel.buttonright_o.item?? && contentModel.buttonright_o.item?has_content>
            <#list contentModel.buttonright_o.item as rightBtn>
                <a href="#${rightBtn.link_right_s!''}" class="body-12">
                    ${rightBtn.label_right_s!''}
                </a>
            </#list>
        </#if>
      </div>
      <div class="line-v"></div>
      <div>
        <a href="#${contentModel.adddress_url_s!}">
            <@crafter.img $field="adddresss_icon_s" src=(contentModel.adddress_icon_s!"") border=0 />
        </a>
      </div>
      <div class="line-v"></div>
      <div>
        <a href="#${contentModel.language_url_s!}">
            <@crafter.img $field="language_icon_s" src=(contentModel.language_icon_s!"") border=0 />
        </a>
      </div>
    </div>
  </div>
</div>
</@crafter.header>