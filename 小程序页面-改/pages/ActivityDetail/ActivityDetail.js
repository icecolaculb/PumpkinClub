//ActivityDetail.js
Page({
  data: {
    array: [{
      mode: 'scaleToFill',
      text: 'scaleToFill：不保持纵横比缩放图片，使图片完全适应'
    }, {
      mode: 'center',
      text: 'center：不缩放图片，只显示图片的中间区域',
    }],
    src: '../../images/1.jpg'
  },
  btn_Join_click: function () {
    wx.showToast({
      title: '关注成功',
    })
  }
})