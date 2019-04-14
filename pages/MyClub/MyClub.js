//MyClub.js
Page({
  data: {
    array: [{
      mode: 'scaleToFill',
      text: 'scaleToFill：不保持纵横比缩放图片，使图片完全适应'
    }, {
      mode: 'center',
      text: 'center：不缩放图片，只显示图片的中间区域',
    }],
    src: '../../images/1.jpg',
    open: false,
    mark: 0,
    newmark: 0,
    istoright: true
  },
  click_ClubDetail: function () {
    wx.navigateTo({
      url: '../ClubDetail/ClubDetail',
    })//点击跳转
  },
  click_Club: function () {
    wx.navigateTo({
      url: '',
    })
  },
  tap_ch: function (e) {
    if (this.data.open) {
      this.setData({
        open: false
      });
    } else {
      this.setData({
        open: true
      });
    }
  },
  tap_start: function (e) {
    // touchstart事件 
    this.data.mark = this.data.newmark = e.touches[0].pageX;
  },
})