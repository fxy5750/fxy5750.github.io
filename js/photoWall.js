<link rel="stylesheet" class="aplayer-secondary-style-marker" href="\assets\css\APlayer.min.css"><script src="\assets\js\APlayer.min.js" class="aplayer-secondary-script-marker"></script>// 说明文件:
// photos.json是图片宽高信息，并储存图片的展示顺序。
// var imgPath = "/img/images/"; 是读取图片的路径。
// 运行npm i -S image-size 导入获取文件大小第三方包
// 运行node source/photo/phototool.js生成json文件
// 找到photos.json,将其复制到source/photo目录下。
// photosInfo.json暂时没发现有啥用，可能是指包含有关照片或图片信息的数据结构或对象。常见的图片信息可能包括照片的标题、描述、拍摄时间、作者、尺寸、格式、路径等。在编程或网站开发中，可以使用类似 photosInfo 这样的命名来表示存储或处理图片信息的变量、数组、对象或函数等。


var imgDataPath = "/photo/photos.json"; //图片名称高宽信息json文件路径，此配置文件可改变图片顺序   //填入你的路径，注意修改
var imgPath = "/img/images/"; //图片访问路径   //填入你的路径，注意修改 /photo/images-/
// var imgPath = "https://cdn.jsdelivr.net/gh/Cenergy/images/gallery/"; //图片访问路径
var imgMaxNum = 50; //图片显示数量

var windowWidth =
  window.innerWidth ||
  document.documentElement.clientWidth ||
  document.body.clientWidth;
if (windowWidth < 768) {
  var imageWidth = 145; //图片显示宽度(手机端)
} else {
  var imageWidth = 250; //图片显示宽度
}

const photo = {
  page: 1,
  offset: imgMaxNum,
  init: function () {
    var that = this;
    $.getJSON(imgDataPath, function (data) {
      that.render(that.page, data);
      //that.scroll(data);
      that.eventListen(data);
    });
  },
  constructHtml(options) {
    const {
      imageWidth,
      imageX,
      imageY,
      name,
      imgPath,
      imgName,
      imgNameWithPattern,
    } = options;
    const htmlEle = `<div class="card lozad" style="width:${imageWidth}px">
                  <div class="ImageInCard" style="height:${
                    (imageWidth * imageY) / imageX
                  }px">
                    <a data-fancybox="gallery" href="${imgPath}${imgNameWithPattern}"
                          data-caption="${imgName}" title="${imgName}">
                            <img  class="lazyload" data-src="${imgPath}${imgNameWithPattern}"
                            src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                            onload="lzld(this)"
                            lazyload="auto">
                    </a>
                  </div>
                  <p>${imgName}</p>
                </div>`;
                // 如果不希望显示图片名称的话删去<p>${imgName}</p>这一行即可。
    return htmlEle;
  },
  render: function (page, data = []) {
    this.data = data;
    if (!data.length) return;
    var html,
      imgNameWithPattern,
      imgName,
      imageSize,
      imageX,
      imageY,
      li = "";

    let liHtml = "";
    let contentHtml = "";

    data.forEach((item, index) => {
      const activeClass = index === 0 ? "active" : "";
      liHtml += `<li class="nav-item" role="presentation">
          <a class="nav-link ${activeClass} photo-tab" id="home-tab" photo-uuid="${item.name}" data-toggle="tab" href="#${item.name}"  role="tab" aria-controls="${item.name}" aria-selected="true">${item.name}</a>
        </li>`;
    });
    const [initData = {}] = data;
    const { children = [],name } = initData;
    children.forEach((item, index) => {
      imgNameWithPattern = item.slice(item.indexOf(" ")+1);
      imgName = imgNameWithPattern.split("/").pop();
      imageSize = item.split(" ")[0];
      imageX = imageSize.split(".")[0];
      imageY = imageSize.split(".")[1];
      let imgOptions = {
        imageWidth,
        imageX,
        imageY,
        name,
        imgName,
        imgPath,
        imgNameWithPattern,
      };
      li += this.constructHtml(imgOptions);
    });
    contentHtml += ` <div class="tab-pane fade show active"  role="tabpanel" aria-labelledby="home-tab">${li}</div>`;

    const ulHtml = `<ul class="nav nav-tabs" id="myTab" role="tablist">${liHtml}</ul>`;
    const tabContent = `<div class="tab-content" id="myTabContent">${contentHtml}</div>`;

    $("#imageTab").append(ulHtml);
    $(".ImageGrid").append(tabContent);
    this.minigrid();
  },
  eventListen: function (data) {
    let self = this;
    var html,
      imgNameWithPattern,
      imgName,
      imageSize,
      imageX,
      imageY,
      li = "";
    $('a[data-toggle="tab"]').on("shown.bs.tab", function (e) {
      $(".ImageGrid").empty();
      const selectId = $(e.target).attr("photo-uuid");
      const selectedData = data.find((data) => data.name === selectId) || {};
      const { children,name } = selectedData;
      let li = "";
      children.forEach((item, index) => {
        imgNameWithPattern = item.split(" ")[1];
        imgName = imgNameWithPattern.split("/").pop();
        imageSize = item.split(" ")[0];
        imageX = imageSize.split(".")[0];
        imageY = imageSize.split(".")[1];
        let imgOptions = {
          imageWidth,
          imageX,
          imageY,
          name,
          imgName,
          imgPath,
          imgNameWithPattern,
        };
        li += self.constructHtml(imgOptions);
      });
      $(".ImageGrid").append(li);
      self.minigrid();
    });
  },
  minigrid: function () {
    var grid = new Minigrid({
      container: ".ImageGrid",
      item: ".card",
      gutter: 12,
    });
    grid.mount();
    $(window).resize(function () {
      grid.mount();
    });
  },
};
photo.init();