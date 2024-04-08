<link rel="stylesheet" class="aplayer-secondary-style-marker" href="\assets\css\APlayer.min.css"><script src="\assets\js\APlayer.min.js" class="aplayer-secondary-script-marker"></script>!(function() {
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
		{
		  name: 'Lanterns',
		  artist: 'Xomu',
		  url: 'http://music.163.com/song/media/outer/url?id=569962512.mp3',
		  cover: 'https://p1.music.126.net/qmzulQXHPTXSTjckc7jebA==/109951163324324308.jpg?param=130y130',
		},
		{
		  name: 'Setsuna',
		  artist: 'Xomu,Justin Klyvis',
		  url: 'http://music.163.com/song/media/outer/url?id=1447458944.mp3',
		  cover: 'https://p2.music.126.net/ZD7IqCFdMlTQVhh2n2lLxQ==/109951164980686606.jpg?param=130y130',
		},
		{
		  name: '江上清风游',
		  artist: '变奏的梦想',
		  url: 'http://music.163.com/song/media/outer/url?id=32743519.mp3',
		  cover: 'https://p1.music.126.net/rxtmC5LLUxMfWx7szJr-bw==/7968160767131459.jpg?param=130y130',
		},
		{
		  name: 'Windy Hill',
		  artist: '羽肿',
		  url: 'http://music.163.com/song/media/outer/url?id=427606780.mp3',
		  cover: 'https://p2.music.126.net/R5wdneWJADdilEDtqBev-w==/109951169463411528.jpg?param=130y130',
		},
      ]
    });
  }
})();

//MP3音乐外链  https://www.ytmp3.cn/
//远方音乐外链 https://mp3.ltyuanfang.cn/