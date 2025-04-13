{% macro generate_database_name(custom_database_name, node) %}
    {% set path = node.path.split('/') %}
    {% if path | length > 1 %}
    {{ path[0] | upper }}
    {% else %}
    {{ target.database }}
    {% endif %}
{% endmacro %}
