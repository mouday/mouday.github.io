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

  .item {
    width: 250px;
    text-align: center;
    padding: 10px;

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
</style>