<#if (content.bigimg)?has_content || (content.title)?has_content>

<#if (content.bigimg)?has_content>
<div id="header-big-imgs" data-num-img=1 data-img-src-1="${content.rootpath!}${content.bigimg}"></div>
</#if>

<header class="header-section<#if (content.bigimg)?has_content> has-img</#if>">

<#if (content.bigimg)?has_content>
<div class="big-img intro-header">
<div class="container">
<div class="row">
<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
<div class="${include_type}-heading">
<h1><#if (content.title)?has_content>${content.title}<#else><br/></#if></h1>
<#if (content.subtitle)?has_content>
  <#if (include_type) == "page">
  <hr class="small">
  <span class="${include_type}-subheading">${content.subtitle}</span>
  <#else>
  <h2 class="${include_type}-subheading">${content.subtitle}</h2>
  </#if>
</#if>
<#if (include_type) == "post">
<span class="post-meta">
  <i class="fa fa-calendar-o"></i>
  ${content.date?string(config.date_format)}
  <#if (content.author)?has_content>
  &nbsp;
  <i class="fa fa-pencil"></i>
  ${content.author}
  </#if>
</span>
<#if (content.tags)?has_content>
<span class="blog-tags">
  &nbsp;
  <i class="fa fa-tags"></i>
  <#list content.tags as tag>
    <a href="${content.rootpath!}tags/${tag}${config.output_extension}">${tag}</a>
  </#list>
</span>
</#if>
</#if>
</div>
</div>
</div>
</div>
<span class='img-desc'></span>
</div>
</#if>

<div class="intro-header no-img">
<div class="container">
<div class="row">
<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
<div class="${include_type}-heading">
<h1><#if (content.title)?has_content>${content.title}<#else><br/></#if></h1>
<#if (content.subtitle)?has_content>
  <#if (include_type) == "page">
  <hr class="small">
  <span class="${include_type}-subheading">${content.subtitle}</span>
  <#else>
  <h2 class="${include_type}-subheading">${content.subtitle}</h2>
  </#if>
</#if>
<#if (include_type) == "post">
<span class="post-meta">
  <i class="fa fa-calendar-o"></i>
  ${content.date?string(config.date_format)}
  <#if (content.author)?has_content>
    &nbsp;
    <i class="fa fa-pencil"></i>
    ${content.author}
  </#if>
</span>
<#if (content.tags)?has_content>
<span class="blog-tags">
  &nbsp;
  <i class="fa fa-tags"></i>
  <#list content.tags as tag>
    <a href="${content.rootpath!}tags/${tag}${config.output_extension}">${tag}</a>
  </#list>
</span>
</#if>
</#if>
</div>
</div>
</div>
</div>
</div>
</header>

<#else>
<div class="intro-header"></div>
</#if>