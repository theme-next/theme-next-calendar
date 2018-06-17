<!-- calendar widget -->
{% if theme.CloudCalendar.enable %}

    <script src="/lib/CloudCalendar/CloudCalendar.js"></script>
    <script src="/lib/CloudCalendar/languages.js"></script>
    <script type="text/javascript">
    $(function() {
        $('#CloudCalendar').aCalendar('{{theme.CloudCalendar.language}}', 
            $.extend(
                '', {
                    single:{{ theme.CloudCalendar.single }},
                    root:'{{theme.CloudCalendar.root}}'
                }
            )
        );
    });
    </script>
{% endif %}

