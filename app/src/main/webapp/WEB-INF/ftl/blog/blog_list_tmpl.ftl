<#setting number_format="#">
<#import "../res/macro.ftl" as macro>
<script id="_tpl_blog_list_tbody" type="text/x-jquery-tmpl"> 
{{each rows}} 
	 <tr>
        <td>
            <input type="checkbox">
        </td>
        <td>@{title}</td>
         <td>@{publishState}</td>
         <td>@{createTime}</td>
        <td>@{viewNum}</td>
          <td>@{lastModifyTime}</td>
         <td>@{modifyTimes}</td>
        
        <td>@{version}</td>
        <td>
        	<a href="#blog.blog-edit!bid=@{id}"><img  src="${rc.contextPath}/dev-lib/assets/images/icn_edit.png" /></a>
            <a href="" id="blog_del" c-id="@{id}"><img  src="${rc.contextPath}/dev-lib/assets/images/icn_trash.png" /></a>
            <a href="" id="blog_preview" c-id="@{id}"><img  src="${rc.contextPath}/dev-lib/assets/images/icn_search.png" /></a>
        </td>
    </tr>
{{/each}} 
</script>

<script id="_tpl_blog_pagination" type="text/x-jquery-tmpl">
	 <ul class="fr">
	    <li {{if hasPrevious5Page}}onclick="blog.blogListing(@{previousPage})"{{else}}class="disabled"{{/if}}><a href="javascript:void(0);">&lt;&lt;</a></li>
	    {{each(i,page) pages}}
	    <li {{if page==currPage}}class="active"{{else}}onclick="blog.blogListing(@{page})"{{/if}} ><a href="javascript:void(0);">@{page}</a></li>
	    {{/each}}
	    <li {{if hasNext5Page}}onclick="blog.blogListing(@{nextPage})"{{else}}class="disabled"{{/if}}><a href="javascript:void(0);">&gt;&gt;</a></li>
	    <li class="disabled"><a href="#">总数：@{records}</a></li>
    </ul>
</script>