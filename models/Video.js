var mongoose = require('mongoose');

var videoSchema = new mongoose.Schema({
  id: Number
});

module.exports = mongoose.model('Video', videoSchema);

