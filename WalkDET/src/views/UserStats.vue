<template>
  <div id="UserStats">
    <Header></Header>
    <div id="user-page">
      <div class="row">
        <div class="col-md-4"></div>
        <div class="middle col-md-4">
          <h1> {{username}}'s Profile</h1>

          <h5></h5>
        </div>
        <div class="col-md-4"></div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <Badges v-bind:acquiredBadges = "badgeResults"/>
        </div>
        <div class="col-md-6">
          <CheckInHistory v-on:badgeResults="setBadgeResults"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import Badges from "@/components/Badges.vue";
import CheckInHistory from "@/components/CheckInHistory.vue";
import auth from "../auth";


export default {
  data() {
    return {
      badgeResults : {},
      username: auth.getUser().sub,
    };
  },
  components: {
    Header,
    Badges,
    CheckInHistory
  },
  methods: {
    setBadgeResults(badges) {
      this.badgeResults = badges
    }
  }
};
</script>

<style>
#user-page {
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

.middle {
  text-align: center;
  margin-top: 85px;
}
</style>