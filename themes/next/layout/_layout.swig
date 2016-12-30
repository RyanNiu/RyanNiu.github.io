<!doctype html>

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.use_motion %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body itemscope itemtype="//schema.org/WebPage" lang="{{ config.language }}">
  {% include '_scripts/third-party/analytics.swig' %}

  {% set container_class = "container one-collumn " %}
  {% if theme.sidebar.position %}
    {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %}
  {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %} ">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="//schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      {#动画背景#}
      <canvas id="background-canvas"></canvas>

      <div class="content-wrap">
      <div class="main-inner">

          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/duoshuo-hot-articles.swig' %}
          {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
        {% include '_scripts/third-party/analytics/busuanzi-counter.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>

    <div class="back-to-top">
      <i class="fa fa-arrow-up"></i>
    </div>
  </div>

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}

  {% include '_scripts/third-party/comments.swig' %}
  {% include '_scripts/third-party/tinysou.swig' %}

  {#{% include '_scripts/third-party/localsearch.swig' %}#}
  {% include '_scripts/third-party/mathjax.swig' %}
  {% include '_scripts/third-party/lean-analytics.swig' %}
  {% include '_scripts/baidu-push.swig' %}
  {% include '_scripts/third-party/schedule.swig' %}
  <!-- mist background -->
  {% include '_scripts/third-party/animate-background.swig' %}

  <!-- algolia 配置开始 -->
  {% if theme.algolia %}
    {% include '_scripts/third-party/algolia.swig' %}
  {% endif %}
  <!-- algolia 配置结束 -->
</body>
</html>
