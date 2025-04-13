{% macro generate_database_name(custom_database_name, node) %}
    {% set raw_path = node.original_file_path.split('/') if node.original_file_path is defined else [] %}
    {% set path = raw_path[1:] if raw_path[0] == 'models' else raw_path %}

    {% if path | length >= 2 %}
        {{ path[0] | upper }}
    {% else %}
        {{ target.database }}
    {% endif %}
{% endmacro %}

{% macro generate_schema_name(custom_schema_name, node) %}
    {% set raw_path = node.original_file_path.split('/') if node.original_file_path is defined else [] %}
    {% set path = raw_path[1:] if raw_path[0] == 'models' else raw_path %}

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

{% macro generate_database_name_from_node(node) %}
    {{ generate_database_name(None, node) }}
{% endmacro %}

{% macro generate_schema_name_from_node(node) %}
    {{ generate_schema_name(None, node) }}
{% endmacro %}
