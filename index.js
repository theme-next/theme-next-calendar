/* global hexo */

'use strict';

var assign = require('object-assign');
var path = require('path');

hexo.config.calendar = assign({
  single: true,
  root: 'calendar/'
}, hexo.config.calendar);

hexo.extend.generator.register('calendar', require('./lib/generator'));

hexo.extend.filter.register('theme_inject', function(injects) {
  if (!hexo.theme.config.CloudCalendar) {
    hexo.log.warn("Please add calendar config.");
    return;
  }
  if (!hexo.theme.config.CloudCalendar.disableSidebar) {
    injects.sidebar.file('calendar-sidebar', path.join(__dirname ,'sidebar.swig'), {}, {cache: true});
  }
  injects.bodyEnd.file('calendar-script', path.join(__dirname ,'calendar.swig'), {}, {cache: true});
  injects.style.push(path.join(__dirname ,'calendar.styl'));
});
