<#import "/templates/system/common/crafter.ftl" as crafter />
<!doctype html>
<html lang="en">
  <head>
    <head>
  <meta charset="utf-8">
  <title>${model.siteTitle_t}</title>
  <meta name="description" content="">
  <meta name="author" content="">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="/static-assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="/static-assets/css/animate.css">
  <link rel="stylesheet" href="/static-assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="/static-assets/css/owl.theme.css">
  <link rel="stylesheet" href="/static-assets/css/owl.carousel.css">
  <!-- Main css -->
  <link rel="stylesheet" href="/static-assets/css/style.css">
  <!-- Google Font -->
  <link href='https://fonts.googleapis.com/css?family=Poppins:400,500,600' rel='stylesheet' type='text/css'>
  <@crafter.head/>
</head>
    <@crafter.head />
  </head>
  <body>
    <@crafter.body_top />
    <section id="${model['internal-name']}" class="parallax-section program-section">
        <div class="container">
            <div class="row">
                <div class="wow fadeInUp col-md-12 col-sm-12" data-wow-delay="0.6s">
                    <div class="section-title">
                    <@crafter.h2 $field="productname_s">
                        ${contentModel.productname_s!''}
                    </@crafter.h2>
                    <@crafter.p $field="description_html">
                        ${contentModel.description_html!''}
                    </@crafter.p>
                    </div>
                </div>
                <#if (contentModel.infoProduct_o.item)??>
                <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <#assign currentIndex=0/>
                        <#list contentModel.infoProduct_o.item as info>
                            <#assign currentIndex = (currentIndex + 1) />
                            <li <#if currentIndex==1>class="active"</#if>>
                                <a href="#info${currentIndex}" aria-controls="${info.title_s}"
                                role="tab" data-toggle="tab"
                                >
                                ${info.title_s}
                                </a>
                            </li>
                        </#list>
                    </ul>
                    <div class="wow fadeInUp col-md-10 col-sm-10" data-wow-delay="0.9s">
                        <!-- tab panes -->
                        <div class="tab-content">
                             <#assign currentIndex=0/>
                            <#list contentModel.infoProduct_o.item as info>
                            <#assign currentIndex = (currentIndex + 1) />
                             <div role="tabpanel" class="tab-pane <#if currentIndex==1>active</#if>" id="info${currentIndex}">
                                    <div class="program-divider col-md-12 col-sm-12"></div>
                                    <div class="col-md-2 col-sm-2">
                                        <#if info.imageinfo_s?? && info.imageinfo_s?trim?has_content>
                                            <@crafter.img
                                            $field="info.imageinfo_s"
                                            $index=index
                                            src=(info.imageinfo_s!'')
                                            class="img-responsive"
                                            alt="program"
                                            />
                                        </#if>
                                    </div>
                                    <div class="col-md-10 col-sm-10">
                                        ${info.desInfo_html}
                                    </div>
                                </div>
                            </#list>
                        </div>
                    </div>

                </#if>
            </div>
        </div>
    </section>
    <@crafter.body_bottom />
    <!-- =========================
     SCRIPTS
============================== -->
<script src="/static-assets/js/jquery.js"></script>
<script src="/static-assets/js/bootstrap.min.js"></script>
<script src="/static-assets/js/jquery.parallax.js"></script>
<script src="/static-assets/js/owl.carousel.min.js"></script>
<script src="/static-assets/js/smooth-scroll.min.js"></script>
<script src="/static-assets/js/wow.min.js"></script>
<script src="/static-assets/js/custom.js"></script>
  </body>
</html>







    <!-- Content -->
          <#--  <section id="${model['internal-name']}" class="parallax-section program-section">
            <header class="main">
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
              <div>
                ${item.title_s}
                ${item.desInfo_html}
              </div>
              <hr class="major" />
            </#list>
          </section>  -->