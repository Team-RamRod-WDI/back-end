'use strict'

const mongoose = require('mongoose')

const pageSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true
  },
  description : {
    type: String,
    required: true
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: false
  }
}, {
  timestamps: true,
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      const userId = (options.user && options.user._id) || false
      ret.editable = userId && userId.equals(doc._owner)
      return ret
    }
  }
})

pageSchema.virtual('length').get(function length () {
  return this.description.length
})

const Page = mongoose.model('Page', pageSchema)

module.exports = Page
