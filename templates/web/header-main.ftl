<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.header id="header">
  <link rel="stylesheet" href="/static-assets/css/font-awesome.css">
  <link rel="stylesheet" href="/static-assets/css/dashlite.css">
  <link rel="stylesheet" href="/static-assets/css/home-user.css">
  <link rel="stylesheet" href="/static-assets/css/common.css">
  <link rel="stylesheet" href="/static-assets/css/navmenu.css">
  <link rel="stylesheet" href="/static-assets/css/agri.css">
  <div class="home-user no-touch nk-nio-theme has-aside">
    <div class="main">
      <div class="banner-header">
        <div class="header header-pc">
          <div class="line-h" style="background: #af1f43;"></div>
          <div class="menu">
            <div class="top-menu">
              <div class="top-menu-left body-15 h-100">
                <div class="icon-agri">
                  <a href="${contentModel.url_logo_web_s!''}">
                    <@crafter.img $field="logo_web_s" src=(contentModel.logo_web_s!"") border=0 />
                  </a>
                </div>
                <div class="line-v" style="height: 36px;background: rgba(255, 255, 255, 0.20);"></div>
                <!-- mega menu -->
                <div class="mega-menu h-100">
                  <div class="ruby-menu-demo-header h-100">
                    <div class="ruby-wrapper h-100">
                      <ul class="ruby-menu">
                        <#if contentModel.list_button_left_o.item?? && contentModel.list_button_left_o.item?has_content>
                          <#list contentModel.list_button_left_o.item as button_left>
                            <#if button_left.link_button_left_level_1_s?has_content>
                            <li class="ruby-menu-mega-blog ">
                              <a href="${button_left.link_button_left_level_1_s!''}"
                                class="body-15">>${button_left.label_button_left_level_1_s!}</a>
                            </li>
                            <#else>
                            <li class="ruby-menu-mega-blog ">
                              <a href="#"
                                class="body-15">>${button_left.label_button_left_level_1_s!}</a>
                                <div style="" class="">
                                  <ul class="ruby-menu-mega-blog-nav pb-4 col-3">
                                    <#list button_left.section_header_level_2_o.item as module>
                                      <@renderComponent component=module />
                                    </#list>
                                  </ul>
                                </div>
                                <span class="ruby-dropdown-toggle"></span>
                            </li>
                            </#if>
                          </#list>
                        </#if>
                      </ul>
                    </div>

                  </div>

                </div>
                <!-- end mega menu -->
                <!-- <div>
                <a href="#">Thư viện Agribank</a>
              </div> -->
              </div>
              <div class="top-menu-right">
                <div class="hot-line">
                  <a href="${contentModel.hotline_url_s!''}" class="regular-15 color-white color-hover-w">
                    <span class="txt-hl">Hotline:</span>${contentModel.hotline_label_t!}
                  </a>
                </div>
                <div class="line-v" style="height: 36px;background: rgba(255, 255, 255, 0.20);"></div>
                <div class="dropdown div-login">
                  <button id="tab-select-answer" class="btn body-14 color-dark-1 home-vision-header-button"
                    data-toggle="dropdown">
                    <span class="body-14 color-red-1">${contentModel.label_account_s!}</span><em
                      class="ni ni-chevron-down color-red-1"></em></button>
                  <div class="dropdown-menu dropdown-menu-right dropdown-menu-auto mt-1">
                    <ul class="link-list-plain">
                      <#if contentModel.list_accounts_o.item?? && contentModel.list_accounts_o.item?has_content>
                        <#list contentModel.list_accounts_o.item as list_accounts>
                          <li class="home-vision-button-dropdown">
                            <a href="${list_accounts.account_link_s!''}" class="tab-pane-answer body-14 "
                              data-tab="tab-agribank-plus">${list_accounts.account_name_s!}</a>
                            <span class="subtitle-12 color-dark-3">${list_accounts.account_text_sub_s!}</span>
                          </li>
                        </#list>
                      </#if>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</@crafter.header>