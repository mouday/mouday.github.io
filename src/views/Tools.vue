<template>
  <div class="container">
    <h1>tools集合</h1>
    <div class="list">
      <template v-for="item in list">
        <a :href="item.link" :key="item.id" target="_blank">
          <img :src="item.icon" alt="">
          {{item.name}}</a>
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
          name: "Json格式化",
          link: "https://www.json.cn/",
          icon: "https://www.json.cn/favicon.ico"
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