<!-- calendar widget -->
{% if theme.CloudCalendar.enable %}
    <script src="{{CloudCalendar.calendarCdn}}"></script>
    <script src="{{CloudCalendar.langCdn}}"></script>
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
