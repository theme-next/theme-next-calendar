<!-- calendar widget -->
{% if theme.CloudCalendar.enable %}
    <script src="/lib/calendar/calendar.min.js"></script>
    <script src="/lib/calendar/languages.min.js"></script>
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
