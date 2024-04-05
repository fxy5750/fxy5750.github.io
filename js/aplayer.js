!(function() {
  var oldLoadAp = window.onload;
  window.onload = function () {
    oldLoadAp && oldLoadAp();

    new APlayer({
      container: document.getElementById('aplayer'),
      fixed: true,
      autoplay: false,
      loop: 'all',
      order: 'random',
      theme: '#b7daff',
      preload: 'none',
      audio: [
        {
          name: "都会走的无一例外 (0.8x)",
          artist: 'DJ小蒋',
          url: 'http://music.163.com/song/media/outer/url?id=2039800841.mp3',
          cover: 'https://y.gtimg.cn/music/photo_new/T002R500x500M00000012EpR22Be8H.jpg',
        },
        {
          name: 'China-X',
          artist: '徐梦圆',
          url: 'https://www.ytmp3.cn/down/49003.mp3',
          cover: 'https://p1.music.126.net/hH4UmteuzsqZHacrr3YS_g==/18358545649308968.jpg?param=130y130',
        },
      ]
    });
  }
})();

//MP3音乐外链  https://www.ytmp3.cn/