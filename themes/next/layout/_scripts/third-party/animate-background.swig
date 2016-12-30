{%
set js_tweenlite = [
'src/TweenLite.min.js'
]
%}
{% for common in js_tweenlite %}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/{{ common }}"></script>
{% endfor %}

{%
set js_animatebg = [
'src/animate-background.js'
]
%}
{% for common in js_animatebg %}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/{{ common }}"></script>
{% endfor %}
