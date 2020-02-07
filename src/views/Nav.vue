<template>
  <div class="container">
    <h1>资源导航</h1>
    <div class="list">
      <template v-for="item in list">
        <div :key="item.id">
          <a :href="item.link" target="_blank">
            <img :src="item.icon" alt="">
            {{item.name}}</a>：
          <span>{{item.desc}}</span>
        </div>
      </template>
    </div>
  </div>
</template>

<script>
export default {
  name: "",

  props: [],

  components: {},

  data() {
    return {
      list: [
        {
          name: "Element",
          desc:
            "一套为开发者、设计师和产品经理准备的基于 Vue 2.0 的桌面端组件库",
          link: "https://element.eleme.cn/#/zh-CN",
          icon: "https://element.eleme.cn/favicon.ico"
        },
        {
          name: "Iconfont",
          desc: "阿里巴巴矢量图标库",
          link: "https://www.iconfont.cn/",
          icon:
            "https://gtms04.alicdn.com/tps/i4/TB1_oz6GVXXXXaFXpXXJDFnIXXX-64-64.ico"
        }
      ]
    };
  },

  computed: {},

  methods: {},

  created() {}
};
</script>

<style lang="less" scoped>
.container {
  width: 1200px;
  margin: 0 auto;
}
.list {
  a {
    display: inline-block;
    img {
      width: 20px;
      height: 20px;
    }
    &:hover {
      //   background-color: #3e50b5;
      color: #3e50b5;
    }
  }
}
</style>