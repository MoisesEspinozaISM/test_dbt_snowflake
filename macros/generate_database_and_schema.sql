{% macro generate_database_name(custom_database_name, node) %}
    {% set path = node.path.split('/') if node.path is defined else [] %}
    {% if path | length >= 2 %}
        {{ path[0] | upper }}
    {% else %}
        {{ target.database }}
    {% endif %}
{% endmacro %}

{% macro generate_schema_name(custom_schema_name, node) %}
    {% set path = node.path.split('/') if node.path is defined else [] %}
    {% if path | length >= 2 %}
        {{ path[1] }}
    {% elif custom_schema_name is defined and custom_schema_name is not none %}
        {{ custom_schema_name }}
    {% elif target.schema is defined %}
        {{ target.schema }}
    {% else %}
        "PUBLIC"
    {% endif %}
{% endmacro %}
