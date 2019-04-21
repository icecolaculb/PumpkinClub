//CreateClub.js
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

    scale: ['校级', '院级'],
    objectArray: [
      {
        id: 0,
        name: '校级'
      },
      {
        id: 1,
        name: '院级'
      }
    ],
    index: 0,
  },

  btn_Join_Click: function () {
    wx.showToast({
      title: '提交成功',
    })
  },
  gotoShow: function () {
    var _this = this
    wx.chooseImage({
      count: 9, // 最多可以选择的图片张数，默认9
      sizeType: ['compressed'], // original 原图，compressed 压缩图，默认二者都有
      sourceType: ['album'], // album 从相册选图，camera 使用相机，默认二者都有
      success: function (res) {
        // success
        console.log(res)
        _this.setData({
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
  bindTextAreaBlur: function (e){
    var that = this;
    that.setData({
      details: '',
    })
  },
})