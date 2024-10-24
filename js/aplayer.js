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
		  name: '春庭雪 (0.8x版) (DJ Wave版)',
		  artist: '邓寓君(等什么君)',
		  url: 'https://wsaudio2bssdlbig.kugou.com/202409291711/e79ab31d27af8dd6d955d99ecf508cf8/bss/extname/wsaudio/c3c78f0f82ba04c9737956497d1b00a4.mp3',
		  cover: 'https://p2.music.126.net/ourVEuAU6mMOR4uhz5ygfg==/109951169607079525.jpg?param=130y130',
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
		{
		  name: '花火が瞬く夜に',
		  artist: '羽肿',
		  url: 'http://music.163.com/song/media/outer/url?id=434902428.mp3',
		  cover: 'https://p2.music.126.net/SZRV6SlwgKt9QaozGxVBlQ==/109951169428343759.jpg?param=130y130',
		},
      ]
    });
  }
})();

//MP3音乐外链  https://www.ytmp3.cn/
//远方音乐外链 https://mp3.ltyuanfang.cn/