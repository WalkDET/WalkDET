<template>
  <div class="home">
    <Header></Header>

    

    <div id="page-content">
  
      <div id="left-content">
        <welcome-banner></welcome-banner>
        <LandmarkButtons v-bind:selectedLandmark="selectedLandmark" />
        <SearchBar v-on:searchResults="sendResultsInfo" />

        <SearchResults
          v-bind:results="searchResults"
          v-if="!haveSelectedLandmark"
          v-on:selectLandmark="sendLandmarkInfo"
        />
        <LandmarkInfo v-bind:selectedLandmark="selectedLandmark" v-if="haveSelectedLandmark" />
      </div>
    
      <div class="container position-fixed">
        <Map v-on:selected-landmark="sendLandmarkInfo"></Map>
      </div>
    
    </div>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import Map from "@/components/Map.vue";
import WelcomeBanner from "@/components/WelcomeBanner.vue";
import LandmarkInfo from "@/components/LandmarkInfo.vue";
import SearchBar from "@/components/SearchBar.vue";
import LandmarkButtons from "@/components/LandmarkButtons.vue";
import SearchResults from "@/components/SearchResults.vue";

export default {
  name: "home",
  components: {
    Header,
    Map,
    WelcomeBanner,
    LandmarkInfo,
    SearchBar,
    LandmarkButtons,
    SearchResults
  },
  data() {
    return {
      selectedLandmark: {},
      searchResults: []
  
    };
  },
  computed: {
    haveSelectedLandmark() {
      if (this.selectedLandmark) {
        return true;
      } else {
        return false;
      }
    }
 
  },
  methods: {
    sendLandmarkInfo(landmark) {
      this.selectedLandmark = landmark;
    },
    sendResultsInfo(results) {
      this.selectedLandmark = null;
      this.searchResults = results;
    }
  }
};
</script>

<style scoped>

.col-md-4 {
  padding-right: 0px;
  padding-left: 0px;
}
.col-md-8 {
  padding-left: 0px;
  padding-right: 0px;
}

.left-side {
  background-color: rgba(68, 188, 236, 0.3);
}

#left-content {
  height: auto;
  max-height:100%;
  width: 33%;
  position: fixed;
  z-index: 1;
  left: 0;
  background-color: white;
  overflow-x: hidden;
  border-radius: 0px 0px 10px 0px;
  box-shadow: 5px 5px 20px 0.5px grey;
}

.container {
  padding: 0px;
}

@media only screen and (max-width: 760px) {
  #left-content {
    margin-top: 70px;
    width: 100%;
    height: auto;
    max-height:40%;
    bottom: 0;
    background-color: white;
  }

}
</style>
