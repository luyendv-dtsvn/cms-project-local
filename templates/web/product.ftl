<#import "/templates/system/common/crafter.ftl" as crafter />
<!doctype html>
<html lang="en">
  <head>
    <#-- Insert your head markup here -->${contentModel.header_o}
    <@crafter.head />
  </head>
  <body>
    <@crafter.body_top />
    <#-- Insert your body markup  here -->
    ${contentModel.productname_s}
    ${contentModel.description_html}
    
    ${contentModel.infoProduct_o}
    
    <#list contentModel.VARIABLE_NAME.item as row>
        ${row.VARIABLE_NAME}
</#list>
    <@crafter.body_bottom />
  </body>
</html>