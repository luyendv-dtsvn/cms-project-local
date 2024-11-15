<#import "/templates/system/common/crafter.ftl" as crafter />
<!doctype html>
<html lang="en">
  <head>
    
    <@crafter.head />
  </head>
  <body>
    <@crafter.body_top />
          <!-- Content -->
          <section>
            <header class="main" <@studio.iceAttr iceGroup="subject"/>>
              <h1>${contentModel.productname_s!""}</h1>
              <h2>by ${contentModel.description_html!""}</h2>
            </header>
            <#if contentModel.imageAvatar_s??>
              <#assign image = contentModel.imageAvatar_s/>
            <#else>
              <#assign image = "/static-assets/images/placeholder.png"/>
            </#if>
            <span class="image main"><img src="${image}" alt="" /></span>
            <#list contentModel.infoProduct_o.item as item>
              <div <@studio.iceAttr iceGroup="blog"/>>
                ${item.title_s}
                ${item.desInfo_html}
              </div>
              <hr class="major" />
            </#list>
          </section>
    <@crafter.body_bottom />
  </body>
</html>