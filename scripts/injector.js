<link rel="stylesheet" class="aplayer-secondary-style-marker" href="\assets\css\APlayer.min.css"><script src="\assets\js\APlayer.min.js" class="aplayer-secondary-script-marker"></script><script class="meting-secondary-script-marker" src="\assets\js\Meting.min.js"></script>//注入文章过期提示 https://github.com/fluid-dev/hexo-theme-fluid/issues/1051
//hexo.extend.injector.register('body_end', `<script src="/js/outdate.js"></script>`,'post')

hexo.extend.injector.register('body_end', `<script src="/js/outdate.js"></script>`'post')
