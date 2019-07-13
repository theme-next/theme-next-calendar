'use strict';

var assign = require('object-assign');

hexo.config.calendar = assign({
  single: true,
  root: 'calendar/'
}, hexo.config.calendar);

hexo.extend.generator.register('calendar', require('./lib/generator'));
