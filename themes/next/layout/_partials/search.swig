{% if theme.swiftype_key %}
  {% include 'search/swiftype.swig' %}
{% elseif theme.tinysou_Key %}
  {% include 'search/tinysou.swig' %}
<!-- algolia 配置开始 -->
{% elseif theme.algolia %}
	{% include 'search/algolia.swig' %}
<!-- algolia 配置结束 -->
{% elseif config.search.path %}
  {% include 'search/localsearch.swig' %}
{% endif %}
