<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.body>
  <!-- Liên kết CSS -->
  <link rel="stylesheet" href="/static-assets/css/font-awesome.css">
  <link rel="stylesheet" href="/static-assets/css/dashlite.css">
  <link rel="stylesheet" href="/static-assets/css/home-user.css">
  <link rel="stylesheet" href="/static-assets/css/common.css">
  <link rel="stylesheet" href="/static-assets/css/navmenu.css">
  <link rel="stylesheet" href="/static-assets/css/agri.css">

  <!-- Bắt đầu nội dung -->
  <li>
    <!-- Ví dụ: nút/hyperlink -->
    <a href="#" class="pb-2">
      ${contentModel.name_Header_Slim_s!""}
    </a>

    <div class="ruby-grid ruby-grid-lined">
      <div class="ruby-row">

        <!-- Cột trái (8 cột) -->
        <div class="ruby-col-8">
          <div class="div-content-mega">
            <div class="div-content-title">
              <div class="div-title-icon">
                <span class="heading-h7">${contentModel.title_main_s!""}</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 28 28" fill="none">
                  <path
                    d="M17.3006 7.36719L16.1314 8.5365L21.3345 13.7397H3.5V15.3934H21.3345L16.1314 20.5966L17.3006 21.7659L24.5 14.5665L17.3006 7.36719Z"
                    fill="#080808" />
                </svg>
              </div>
            </div>

            <div class="div-content-des">
              <!-- Khối mô tả bên trái -->
              <div class="div-des-6">
                <#-- Nếu có tên/mô tả sản phẩm bên trái -->
                <#if contentModel.name_product_left_lv2_s?has_content>
                  <div class="div-des-title">
                    <span class="heading-h8">${contentModel.name_product_left_lv2_s!}</span>
                    <span class="regular-14">${contentModel.description_product_left_lv2_s!}</span>
                  </div>

                  <div class="div-des-category">
                    <span class="subtitle-12" style="text-transform: uppercase;">Sản phẩm nổi bật</span>
                    <div class="line-h"></div>
                <#else>
                  <div class="div-des-category">
                </#if>

                <!-- Danh sách nút bên trái -->
                <#list contentModel.list_button_left_o.item as listButton_left_lv2>
                  <a href="${listButton_left_lv2.url_button_left_s!''}" class="div-category-icon">
                    <span class="body-15">${listButton_left_lv2.name_button_left_s!""}</span>
                    <em class="icon ni ni-chevron-right"></em>
                  </a>
                  <div class="line-h"></div>
                </#list>

                <a class="div-category-more">
                  <span class="regular-15 color-red-1">
                    Xem tất cả
                    <em class="icon ni ni-arrow-right"></em>
                  </span>
                </a>
              </div>
            </div>

            <div class="div-des-6">
              <#-- Nếu có tên/mô tả sản phẩm bên phải -->
              <#if contentModel.name_product_right_lv2_s?has_content>
                <div class="div-des-title">
                  <span class="heading-h8">${contentModel.name_product_right_lv2_s!}</span>
                  <span class="regular-14">${contentModel.description_product_right_lv2_s!}</span>
                </div>
                <div class="div-des-category">
                  <span class="subtitle-12" style="text-transform: uppercase;">Sản phẩm nổi bật</span>
                  <div class="line-h"></div>
              <#else>
                <div class="div-des-category">
              </#if>

              <!-- Danh sách nút bên phải -->
              <#list contentModel.list_button_right_o.item as listButton_right_lv2>
                <a href="${listButton_right_lv2.url_button_right_s!''}" class="div-category-icon">
                  <span class="body-15">${listButton_right_lv2.name_button_right_s!""}</span>
                  <em class="icon ni ni-chevron-right"></em>
                </a>
                <div class="line-h"></div>
              </#list>

              <a class="div-category-more">
                <span class="regular-15 color-red-1">
                  Xem tất cả
                  <em class="icon ni ni-arrow-right"></em>
                </span>
              </a>
            </div>
          </div>
        </div><!-- end .ruby-col-8 -->

        <!-- Cột giữa/phải (4 cột) -->
        <div class="ruby-col-4 pr-0">
          <div class="div-content-img">
            <div class="div-img img-hover-btn">
              <@crafter.img
                $field="img_level_2_s"
                src=(contentModel.img_level_2_s!"")
                border=0
              />
              <div class="btn-overlay">
                <a href="${contentModel.url_ing_lv2_s!''}" class="btn-img regular-14 color-white" style="color:white">
                  Khám phá ngay
                </a>
              </div>
            </div>
          </div>
        </div><!-- end .ruby-col-4 -->

        <!-- Cột footer-mega (12 cột) -->
        <div class="ruby-col-12 div-footer-mega">
          <div class="footer-mega-link">
            <#list contentModel.list_item_header_lv2_o.item as listHeaderItem_footer>
              <a href="${listHeaderItem_footer.url_item_header_lv2_s!''}" class="div-link-icon">
                <@crafter.img
                  $field="icon_item_header_lv2_s"
                  src=(listHeaderItem_footer.icon_item_header_lv2_s!"")
                  border=0
                />
                <span class="body-15 color-dark-2">
                  ${listHeaderItem_footer.name_item_header_lv2_s!""}
                </span>
                <em class="icon ni ni-chevron-right color-dark-2"></em>
              </a>
              <div class="line-v"></div>
            </#list>
          </div>
          <a class="footer-mega-map">
            <span class="regular-15 color-red-1">Sơ đồ trang</span>
            <em class="icon ni ni-arrow-right color-red-1"></em>
          </a>
        </div><!-- end .ruby-col-12 -->

      </div><!-- end .ruby-row -->
    </div><!-- end .ruby-grid -->
  </li><!-- end outer div -->

  <span class="ruby-dropdown-toggle"></span>
</@crafter.body>
