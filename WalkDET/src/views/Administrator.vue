<template>
  <div id="administrator">
    <Header />
    <div id="administrator-page">
      <UpdateLandmark />
      <AproveLandmarks/>
    </div>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import UpdateLandmark from "@/components/UpdateLandmark.vue";
import AproveLandmarks from "@/components/AproveLandmarks.vue";
export default {
  components: {
    Header,
    UpdateLandmark,
    AproveLandmarks
  }
};
</script>

<style>
#administrator-page {
  /* background-image: url("assets/detroitMap.jpg"); */
  background-image: url("../assets/detroitMap.jpg");
  /* background-color: rgba(225, 243, 242, 0.9); */
  background-blend-mode: lighten;
  background-attachment: fixed;
  background-position: center center;
  background-repeat: repeat-y;
  background-size: 100%;
  padding-bottom: 200px;
  /* height: 100vh; */
  background-color: rgba(255, 255, 255, 0.85);
}
</style>