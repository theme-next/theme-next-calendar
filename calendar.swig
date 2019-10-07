<!-- calendar widget -->
{% if theme.CloudCalendar.enable %}
    <script src="{{ theme.CloudCalendar.calendarCdn }}"></script>
    <script src="{{ theme.CloudCalendar.langCdn }}"></script>
    <script>
    $(function() {
        $('#CloudCalendar').aCalendar('{{ theme.CloudCalendar.language }}',
            $.extend(
                '', {
                    single:{{ theme.CloudCalendar.single }},
                    root:'{{ theme.CloudCalendar.root }}'
                }
            )
        );
    });
    </script>
{% endif %}
