<!-- calendar widget -->
{% if theme.CloudCalendar.enable %}

    <script src="{{url_for(theme.vendors._internal + '/CloudCalendar/CloudCalendar.js') }}"></script>
    <script src="{{url_for(theme.vendors._internal + '/CloudCalendar/languages.js') }}"></script>
    <script type="text/javascript">
    $(function() {
        $('#CloudCalendar').aCalendar('', $.extend('', {}));
    });
    </script>
{% endif %}
