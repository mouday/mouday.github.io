<template>
  <div>
    <div class="header">
      <div>
        <h1 class="header-h1">
          <a href="/">{{title}}</a>
        </h1>
      </div>

    </div>
    <div class="main">
      <div class="items">

        <template v-for="item in list">
          <a :href="item.link" :key="item.id" class="item" :style="{'background-color': item.color}" target="_blank">
            <img :src="item.icon" alt="">
            <h2>{{item.name}}</h2>
          </a>
        </template>
      </div>

    </div>
    <div class="footer">
      &copy; 2020
    </div>

  </div>

</template>

<script>
// @ is an alias to /src

export default {
  name: "home",
  components: {},
  data() {
    return {
      title: "彭世瑜的主页",

      list: [
        {
          name: "读书笔记",
          link: "/LearningNote",
          color: "#3e50b5",
          icon: require("@/assets/note.png")
        },
        {
          name: "CSDN博客",
          link: "https://pengshiyu.blog.csdn.net/",
          color: "#ca0a16",
          icon: require("@/assets/csdn.png")
        },
        {
          name: "GitHub",
          link: "https://github.com/mouday",
          color: "#24292f",
          icon: require("@/assets/github.png")
        },
        {
          name: "知乎",
          link: "https://zhuanlan.zhihu.com/mouday",
          color: "#0084ff",
          icon: require("@/assets/zhihu.png")
        },
        {
          name: "bilibili",
          link: "https://space.bilibili.com/362231606",
          color: "#00a1d6",
          icon: require("@/assets/bilibili.png")
        },

        {
          name: "域名转让",
          link: this.$router.resolve({ name: "domain" }).href,
          color: "#ff6a00",
          icon: require("@/assets/domain.png")
        }
      ]
    };
  }
};
</script>

<style lang="less" scoped>
@main-width: 850px;

.items {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;

  .item {
    color: #ffffff;
    width: 250px;
    height: 170px;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 30px;

    img {
      width: 50px;
      height: 50px;
    }
    h2 {
      margin-left: 10px;
    }
  }
}

.base {
  background-color: #b3c0d1;
  color: #333;
}
.header {
  height: 60px;
  width: @main-width;
  margin: 0 auto;
  margin-bottom: 20px;

  .header-h1 {
    color: #ff6700;
    a:link,
    a:visited {
      color: #ff6700;
    }
    a:hover,
    a:active {
      color: #ff6700;
    }
  }
}
.main {
  background-color: #ffffff;
  width: @main-width;
  margin: 0 auto;
  a:link,
  a:visited {
    color: #ffffff;
  }
  a:hover,
  a:active {
    color: #ffffff;
  }
}
.footer {
  text-align: center;
  margin-top: 20px;
}
</style>