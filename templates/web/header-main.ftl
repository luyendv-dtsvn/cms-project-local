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
                                  <a href="#" class="body-15">>${button_left.label_button_left_level_1_s!}</a>
                                  <div style="" class="">
                                    <ul class="ruby-menu-mega-blog-nav pb-4 col-3">
                                      <#list contentModel.VARIABLE_NAME.item as subItem>
                                        <li><a href="#" class="pb-2">${subItem.name_Header_Slim_s!""}</a>
                                          <div class="ruby-grid ruby-grid-lined">
                                            <div class="ruby-row">
                                              <div class="ruby-col-8">
                                                <div class="div-content-mega">
                                                  <div class="div-content-title">
                                                    <div class="div-title-icon">
                                                      <span class="heading-h7">${subItem.title_main_s!""}</span>
                                                      <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28"
                                                        viewBox="0 0 28 28" fill="none">
                                                        <path
                                                          d="M17.3006 7.36719L16.1314 8.5365L21.3345 13.7397H3.5V15.3934H21.3345L16.1314 20.5966L17.3006 21.7659L24.5 14.5665L17.3006 7.36719Z"
                                                          fill="#080808" />
                                                      </svg>
                                                    </div>
                                                  </div>
                                                  <div class="div-content-des">
                                                    <div class="div-des-6">
                                                      <#if subItem.name_product_left_lv2_s?has_content>
                                                        <div class="div-des-title ">
                                                          <span
                                                            class="heading-h8">${subItem.name_product_left_lv2_s!}</span>
                                                          <span
                                                            class="regular-14">${subItem.description_product_left_lv2_s!}</span>
                                                        </div>
                                                        <div class="div-des-category">
                                                          <span class="subtitle-12"
                                                            style="text-transform: uppercase;">Sản phẩm nổi bật</span>
                                                          <div class="line-h"></div>
                                                          <#else>
                                                            <div class="div-des-category">
                                                      </#if>
                                                      <#list subItem.list_button_left_o.item as listButton_left_lv2>
                                                        <a href="${listButton_left_lv2.url_button_left_s!""}"
                                                          class="div-category-icon">
                                                          <span
                                                            class="body-15">${listButton_left_lv2.name_button_left_s!""}</span>
                                                          <em class="icon ni ni-chevron-right"></em>
                                                        </a>
                                                        <div class="line-h"></div>
                                                      </#list>
                                                      <a class="div-category-more">
                                                        <span class="regular-15 color-red-1">Xem tất cả
                                                          <em class="icon ni ni-arrow-right"></em></span>
                                                      </a>
                                                    </div>
                                                  </div>
                                                  <div class="div-des-6">
                                                    <#if subItem.name_product_right_lv2_s?has_content>
                                                      <div class="div-des-title ">
                                                        <span
                                                          class="heading-h8">${subItem.name_product_right_lv2_s!}</span>
                                                        <span
                                                          class="regular-14">${subItem.description_product_right_lv2_s!}</span>
                                                      </div>
                                                      <div class="div-des-category">
                                                        <span class="subtitle-12" style="text-transform: uppercase;">Sản
                                                          phẩm nổi bật</span>
                                                        <div class="line-h"></div>
                                                        <#else>
                                                          <div class="div-des-category">
                                                    </#if>
                                                    <#list subItem.list_button_right_o.item as listButton_right_lv2>
                                                      <a href="${listButton_right_lv2.url_button_right_s!""}"
                                                        class="div-category-icon">
                                                        <span
                                                          class="body-15">${listButton_right_lv2.name_button_right_s!""}</span>
                                                        <em class="icon ni ni-chevron-right"></em>
                                                      </a>
                                                      <div class="line-h"></div>
                                                    </#list>
                                                    <a class="div-category-more">
                                                      <span class="regular-15 color-red-1">Xem tất cả
                                                        <em class="icon ni ni-arrow-right"></em></span>
                                                    </a>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                          <div class="ruby-col-4 pr-0">
                                            <div class="div-content-img ">
                                              <div class="div-img img-hover-btn" style="">
                                                <img src="../assets/images/menu/card.png" alt="">
                                                <@crafter.img $field="img_level_2_s" src=(subItem.img_level_2_s!"")
                                                  border=0 />
                                                <div class="btn-overlay">
                                                  <a href="${subItem.url_ing_lv2_s!""}"
                                                    class="btn-img regular-14 color-white" style="color:white">Khám phá
                                                    ngay</a>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                          <div class="ruby-col-12 div-footer-mega">
                                            <div class="footer-mega-link">
                                              <#list subItem.list_item_header_lv2_o.item as listHeaderItem-footer>
                                                <a href="${listHeaderItem-footer.url_item_header_lv2_s!""}"
                                                  class="div-link-icon">
                                                  <@crafter.img $field="icon_item_header_lv2_s"
                                                    src=(listHeaderItem-footer.icon_item_header_lv2_s!"") border=0 />
                                                  <span
                                                    class="body-15 color-dark-2">${listHeaderItem-footer.name_item_header_lv2_s!""}</span>
                                                  <em class="icon ni ni-chevron-right color-dark-2"></em>
                                                </a>
                                                <div class="line-v"></div>
                                              </#list>
                                            </div>
                                            <a class="footer-mega-map">
                                              <span class="regular-15 color-red-1">Sơ đồ trang</span>
                                              <em class="icon ni ni-arrow-right color-red-1"></em>
                                            </a>
                                          </div>
                                  </div>
                    </div>
                    <span class="ruby-dropdown-toggle"></span>
                    </li>
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