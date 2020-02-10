<template>
  <div class="container" :key="count">
    <iframe id="iframe" :src="currentUrl" frameborder="0" height="100%"></iframe>
    <div id="tool">
      <div class="link" v-for="item in searchList" @click="handleSearch(item.name)">
        {{item.name}}
      </div>
    </div>
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
      searchName: 0,
      keywords: "",
      searchList,
      radio: 0,
      count: 0
    };
  },

  computed: {},

  methods: {
    search() {
      this.searchName = this.$route.query.search;
      this.keywords = this.$route.query.keywords;

      console.log(this.searchIndex, this.keywords);

      let searchInfo = this.getSearch(this.searchName);
      this.currentUrl = searchInfo.link + this.keywords;
      // window.open(routeData.href, "_blank");
    },

    getSearch(name) {
      for (let item of searchList) {
        if (item.name === name) {
          return item;
        }
      }
    },

    handleSearch(name) {
      // console.log(index, this.radio);
      // let item = getSearch(name);
      this.$router.push({
        name: "searchResult",
        query: {
          keywords: this.keywords,
          search: name,
          timestamp: new Date().getTime()
        }
      });
      this.count++;
    }
  },

  created() {
    this.search();
  },

  mounted() {
    // window.onresize = resize;
    const oIframe = document.getElementById("iframe");
    const deviceWidth = document.documentElement.clientWidth;
    const deviceHeight = document.documentElement.clientHeight;
    oIframe.style.width = Number(deviceWidth) + "px"; //数字是页面布局宽度差值
    oIframe.style.height = Number(deviceHeight) + "px"; //数字是页面布局高度差
  }
};
</script>

<style scoped>
iframe {
  width: 100%;
}

#tool {
  position: absolute;
  top: 150px;
  left: 10px;
}
.link {
  cursor: pointer;
}
</style>