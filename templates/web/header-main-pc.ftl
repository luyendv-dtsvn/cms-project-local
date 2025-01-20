<#import "/templates/system/common/crafter.ftl" as crafter />

   <@crafter.body>
    <link rel="stylesheet" href="/static-assets/css/font-awesome.css">
  <link rel="stylesheet" href="/static-assets/css/dashlite.css">
  <link rel="stylesheet" href="/static-assets/css/home-user.css">
  <link rel="stylesheet" href="/static-assets/css/common.css">
  <link rel="stylesheet" href="/static-assets/css/navmenu.css">
  <link rel="stylesheet" href="/static-assets/css/agri.css">
    <div><a href="#" class="pb-2">${contentModel.name_Header_Slim_s!""}</a>
        <div class="ruby-grid ruby-grid-lined">
            <div class="ruby-row">
                <div class="ruby-col-8">
                    <div class="div-content-mega">
                        <div class="div-content-title">
                            <div class="div-title-icon">
                                <span class="heading-h7">${contentModel.title_main_s!""}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </@crafter.body>