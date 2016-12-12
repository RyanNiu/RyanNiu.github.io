{%
  set js_algolia = [
    'src/algolia.js'
  ]
%}
{% for common in js_algolia %}
  {# S: Include Algolia instantsearch.js library #}
  <link href="//cdn.bootcss.com/instantsearch.js/1.8.14/instantsearch.min.css" rel="stylesheet">
  <script src="//cdn.bootcss.com/instantsearch.js/1.8.14/instantsearch.min.js"></script>
  {# E: Include Algolia instantsearch.js library #}

  <script type="text/javascript" src="{{ url_for(theme.js) }}/{{ common }}?v={{ theme.version }}"></script>
{% endfor %}