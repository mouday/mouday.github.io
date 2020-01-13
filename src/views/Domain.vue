<template>
  <div class="main">
    <p><a href="/">返回首页</a></p>
    <h1>域名转让</h1>
    <p>阿里云米店：<a href="https://mi.aliyun.com/shop/28665" target="_blank">https://mi.aliyun.com/shop/28665</a></p>
    <p>联系方式: 邮箱：1940607002@qq.com QQ：1940607002</p>
    <div class="items">

      <template v-for="item in list">
        <a href="javascript:void();" :key="item.id" class="item" :style="{'background-color': item.color}">

          <h2>{{item.name}}</h2>
          <div class="item-info"><span>{{item.price}}</span></div>
        </a>
      </template>
    </div>
  </div>
</template>    


<script>
// import Domain from "./Home.vue";

export default {
  name: "",
  //   extends: Domain,
  props: [],

  components: {},

  data() {
    return {
      title: "域名转让",
      list: [
        {
          name: "mouday.com",
          price: "￥1万",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "farthe.com",
          price: "￥1万",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "pupong.com",
          price: "￥1万",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "qiangtixing.com",
          price: "强提醒",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "liulaogen.com.cn",
          price: "刘老根",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "anjianzheng.com",
          price: "安检证",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "chuaitu.com",
          price: "揣图",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "www.gaoyang.com.cn",
          price: "高阳",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "qihaoxian.com",
          price: "七号线",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "shuajiong.com",
          price: "耍囧",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "hatuan.com",
          price: "哈团",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "4444444.com.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },

        {
          name: "nuomo.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },

        {
          name: "laoniu.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },

        {
          name: "niuquan.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "tiaochu.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "xauw.com",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "jutu.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "huangche.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },

        {
          name: "pingpan.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "fenkuai.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "qianglie.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },

        {
          name: "063000.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "twu.com.cn",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "tuan4.com",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "345678.org",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        },
        {
          name: "20007000.com",
          price: "面议",
          link: "#",
          color: "#3e50b5",
          icon: require("@/assets/domain.png")
        }
      ]
    };
  },

  computed: {},

  methods: {},

  created() {}
};
</script>

<style lang="less">
@main-width: 850px;

.main {
  width: @main-width;
  margin: 0 auto;

  h1 {
    text-align: center;
  }
  a {
    color: #3e50b5;
  }
}
.items {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;

  .item {
    width: 250px;
    text-align: center;
    padding: 10px;
    margin: 10px 0;

    h2 {
      color: #ffffff;
    }
    span {
      color: #ff6a00;
      font-size: 26px;
    }

    img {
      width: 50px;
    }
    .item-info {
      display: flex;
      align-items: center;
      justify-content: center;
    }
  }
}

@media screen and (max-width: 500px) {
  .main {
    width: 100%;
  }
  .items {
    flex-wrap: wrap;
    .item {
      width: calc(100% - 20px);
      padding: 10px;
      margin: 10px 0;
    }
  }
}
</style>