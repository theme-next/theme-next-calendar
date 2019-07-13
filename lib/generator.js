'use strict';

module.exports = function(locals) {
  var config = this.config.calendar;
  var single = config.single;
  var root = config.root;

  function generateKey(date) {
    var year = date.year();
    var month = date.month() + 1; // month is started from 0
    return year + '-' + month;
  }

  var posts = locals.posts.sort('date').filter(function(post) {
    return post.published;
  }).map(function(post) {
    return {
      title: post.title,
      date: post.date,
      link: '/' + post.path
    };
  }).reduce(function(prev, cur, index, array) {
    var key = generateKey(cur.date);

    if (!prev.hasOwnProperty(key)) {
      prev[key] = [];
    }

    prev[key].push(cur);
    return prev;
  }, {});

  if (!single) {
    if (root[root.length - 1] !== '/') {
      root += '/';
    }

    var keys = Object.keys(posts);
    var calendars = keys.map(function(key) {
      return {
        path: root + key + '.json',
        data: JSON.stringify(posts[key])
      };
    });

    calendars.push({
      path: root + 'list.json',
      data: JSON.stringify(keys)
    });

    return calendars;
  }

  return {
    path: 'calendar.json',
    data: JSON.stringify(posts)
  };
};
