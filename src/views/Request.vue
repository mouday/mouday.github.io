<template>
  <div class="container">
    <h1>请求助手</h1>
    <div class="request">
      <el-input placeholder="请输入内容" v-model="requestUrl" class="input-with-select" @keydown.native.enter="search">
        <el-select v-model="method" slot="prepend" placeholder="请选择">
          <template v-for="(item, index) in methodList">
            <el-option :label="item.name" :value="item.name" :key="index"></el-option>
          </template>
        </el-select>
        <el-button slot="append" icon="el-icon-search" @click="search"></el-button>
      </el-input>
    </div>

    <!-- <div class="header">
      <el-input type="textarea" :rows="2" placeholder="请求头" v-model="requestHeader">
      </el-input>
    </div> -->
    <div class="body">
      <el-input type="textarea" :rows="20" placeholder="响应体" v-model="responseBody">
      </el-input>
    </div>

  </div>
</template>

<script>
import Axios from "axios";

export default {
  name: "",

  props: [],

  components: {},

  data() {
    return {
      keywords: "",
      requestUrl: "",
      method: "GET",
      selectIndex: 0,
      requestHeader: "",
      responseBody: "",
      methodList: [
        {
          name: "GET"
        },
        {
          name: "POST"
        }
      ]
    };
  },

  computed: {},

  methods: {
    search() {
      Axios.request({
        method: this.method,
        url: this.requestUrl,
        // data: {
        //   firstName: "Fred",
        //   lastName: "Flintstone"
        // },
        params: {}
        // headers: JSON.parse(this.requestHeader)
      }).then(response => {
        console.log(response);
        let data;
        try {
          data = JSON.stringify(response.data);
        } catch (e) {
          data = response.data;
        }
        console.log(data);

        this.responseBody = data;
      });
    }
  },

  created() {
    // console.log(searchList);
  }
};
</script>

<style scoped>
.container {
  width: 850px;
  margin: 0 auto;
  text-align: center;
  margin-top: 10px;
}
.header,
.body {
  margin-top: 20px;
}
>>> .el-select .el-input {
  width: 100px;
}
.input-with-select .el-input-group__prepend {
  background-color: #fff;
}
</style>