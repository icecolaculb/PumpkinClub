//Application.js
var util = require('../../utils/util.js')
Page({
  data: {
    array: [{
      mode: 'scaleToFill',
      text: 'scaleToFill：不保持纵横比缩放图片，使图片完全适应'
    }, {
      mode: 'center',
      text: 'center：不缩放图片，只显示图片的中间区域',
    }],
    src: '../../Images/photo.jpg',

  },

  btn_Join_Click: function () {
    wx.showToast({
      title: '提交成功',
    })
  },
  gotoShow: function () {
    var __this = this
    wx.chooseImage({
      count: 1, // 最多可以选择的图片张数，默认9
      sizeType: ['compressed'], // original 原图，compressed 压缩图，默认二者都有
      sourceType: ['album'], // album 从相册选图，camera 使用相机，默认二者都有
      success: function (res) {
        // success
        console.log(res)
        __this.setData({
          src: res.tempFilePaths
        })
      },
      fail: function () {
        // fail
      },
      complete: function () {
        // complete
      }
    })
  },
  gotoShow_file: function () {
    var _this = this
    wx.chooseImage({
      count: 1, // 最多可以选择的图片张数，默认9
      sizeType: ['compressed'], // original 原图，compressed 压缩图，默认二者都有
      sourceType: ['album'], // album 从相册选图，camera 使用相机，默认二者都有
      success: function (res1) {
        // success
        console.log(res1)
        _this.setData({
          src: res1.tempFilePaths1
        })
      },
      fail: function () {
        // fail
      },
      complete: function () {
        // complete
      }
    })
  }
})