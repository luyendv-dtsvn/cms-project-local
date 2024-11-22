<#import "/templates/system/common/crafter.ftl" as crafter />

<article>
  <!-- Program Divider -->
  <div class="program-divider col-md-12 col-sm-12"></div>

  <!-- Program Speaker -->
  <div class="col-md-2 col-sm-2">
    <#if contentModel.photo_s?? && contentModel.photo_s?trim?has_content>
      <@crafter.img
        $field="photo_s"
        src=(contentModel.photo_s!'')
        class="img-responsive"
        alt="program"
      />
    </#if>
  </div>

  <div class="col-md-10 col-sm-10">
    <h6>
      <span>
        <i class="fa fa-clock-o"></i>
        <@crafter.span $field="loanlimit_s">
          ${contentModel.loanlimit_s!''}
        </@crafter.span>
        <@crafter.span $field="loanlimitunit_s">
          ${contentModel.loanlimitunit_s!''}
        </@crafter.span>
      </span>
      <span>
        <i class="fa fa-map-marker"></i>
        <@crafter.span $field="loanduration_s">
          ${contentModel.loanduration_s!''}
        </@crafter.span>
        <@crafter.span>
          Tháng
        </@crafter.span>
      </span>
    </h6>

    <!-- Main Title -->
    <@crafter.h3 $field="titlemain_s">
      ${contentModel.titlemain_s!''}
    </@crafter.h3>

    <!-- Subtitle -->
    <@crafter.h4 $field="programs_o.programSubtitle_t">
      ${program.programSubtitle_t!''}
    </@crafter.h4>

    <!-- Description -->
    <@crafter.p>
      <#if contentModel.information_o.item??>
        <#assign currentIndex=0 />
        <#list contentModel.information_o.item as info>
          <#assign currentIndex = currentIndex + 1 />
          <div class="col-md-10 col-sm-10" id="info${currentIndex}">
            ${info.title_s!''}
          </div>
        </#list>
      </#if>
    </@crafter.p>
  </div>
</article>
