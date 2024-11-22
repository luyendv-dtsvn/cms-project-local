<#import "/templates/system/common/crafter.ftl" as crafter />

<article>
<!-- program divider -->
                <div class="program-divider col-md-12 col-sm-12"></div>
              </#if>
              <!-- program speaker here -->
              <div class="col-md-2 col-sm-2">
                  <#if contentModel.photo_s?? && contentModel.photos_o?trim?has_content>
                    <@crafter.img
                      $field="contentModel.photo_s"
                      $index=index
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
                    <@crafter.span $field="contentModel.loanlimit_s" $index=index>
                      ${contentModel.loanlimit_s!''}
                    </@crafter.span>
		    <@crafter.span $field="contentModel.loanlimitunit_s" $index=index>
                      ${contentModel.loanlimitunit_s!''}
                    </@crafter.span>
                  </span>
                  <span>
                    <i class="fa fa-map-marker"></i>
                    <@crafter.span $field="contentModel.loanduration_s" $index=index>
                      ${contentModel.loanduration_s!''}
                    </@crafter.span>
		    <@crafter.span>
                      Tháng
                    </@crafter.span>
                  </span>
                </h6>
                <@crafter.h3 $field="contentModel.titlemain_s" $index=index>
                  ${contentModel.titlemain_s!''}
                </@crafter.h3>
                <@crafter.h4 $field="programs_o.programSubtitle_t" $index=index>
                  ${program.programSubtitle_t!''}
                </@crafter.h4>
                <@crafter.p>
                  <#assign currentIndex=0/>
		<#list contentModel.information_o.item as info>
		<#assign currentIndex = (currentIndex + 1) />
		<div class="col-md-10 col-sm-10" id="info${currentIndex}">
			${info.title_s}
		</div>
		</#list>
                </@crafter.p>
              </div>
</article>