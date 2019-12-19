<template>
  <div id="not-found">
      <Header></Header>
      <div id="not-found-background">
    <h1>The Page You Are Looking For Does Not Exist</h1>
      </div>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";

export default {
    components: {
        Header
    }
};
</script>

<style scoped>
div {
  /* background-image: url("assets/detroitMap.jpg"); */
  background-image: url("../assets/detroitMap.jpg");
  background-color: rgba(225, 243, 242, 0.9);
  background-blend-mode: lighten;
  background-attachment: fixed;
  background-position: center center;
  background-repeat: repeat-y;
  background-size: 100%;
  padding-bottom: 200px;
  /* height: 100vh; */
  /* background-color: rgba(255, 255, 255, 0.85); */
}

h1 {
    text-align: center;
}
</style>
