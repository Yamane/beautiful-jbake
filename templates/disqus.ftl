<#if (config.author_disqus)?has_content>
<div class="comments">
<div id="disqus_thread"></div>
<script type="text/javascript">
var disqus_shortname = '${config.author_disqus}';
/* ensure that pages with query string get the same discussion */
    var url_parts = window.location.href.split("?");
    var disqus_url = url_parts[0];
(function() {
    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
    dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
</div>
</#if>