<template>
  <div class="container">
    <h1>聚合搜索</h1>
    <el-input placeholder="请输入内容" v-model="keywords" class="input-with-select" @keydown.native.enter="search">
      <el-select v-model="selectIndex" slot="prepend" placeholder="请选择">
        <el-option :label="item.name" :value="index" v-for="item, index in searchList" :key="index"></el-option>
      </el-select>
      <el-button slot="append" icon="el-icon-search" @click="search"></el-button>
    </el-input>

  </div>
</template>

<script>
import { searchList } from "@/config/index.js";

export default {
  name: "",

  props: [],

  components: {},

  data() {
    return {
      keywords: "",
      selectIndex: 0,
      searchList
    };
  },

  computed: {},

  methods: {
    search() {
      // let routeData = this.$router.resolve({
      //   name: "searchResult",
      //   query: { keywords: this.keywords, search: this.select }
      // });
      // console.log(searchList[this.selectIndex].link);
      let url = searchList[this.selectIndex].link + this.keywords;
      window.open(url, "_blank");
    }
  },

  created() {
    console.log(searchList);
  }
};
</script>

<style scoped>
.container {
  width: 650px;
  margin: 0 auto;
  text-align: center;
  margin-top: 100px;
}

>>> .el-select .el-input {
  width: 100px;
}
.input-with-select .el-input-group__prepend {
  background-color: #fff;
}
</style>