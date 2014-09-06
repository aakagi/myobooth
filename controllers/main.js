var Video = require('../models/Video');

/**
 * GET /
 * Home page.
 */
exports.home = function(req, res) {
  res.render('home', {
    title: 'Home'
  });
};

/**
 * GET /
 * About page.
 */
exports.about = function(req, res) {
  res.render('about', {
    title: 'About'
  });
};

/**
 * GET /
 * Album page.
 */
exports.album = function(req, res) {
  res.render('album', {
    title: 'Album',
  });
};

exports.videos = function(req, res) {
  Video.find(function(err, videos) {
    if(err) {
      res.render(err);
    }
    else {
      res.json({
        videos: videos
      });
    }
  });
};

exports.createVideo = function(req, res) {
  console.log(req);
  Video.create({id: req.body.id}, function(err, data) {
    if(err) {
      console.log(err);
      res.json(err);
    }
    else {
      console.log("Submitted video '" + data.id + "'!");
      res.json({id: data.id});
    }
  });
};
