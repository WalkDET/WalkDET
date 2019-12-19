<template>
  <div id="searchResults">
    Search Results

    <div
      class="search-result"
      v-for="result in results"
      v-bind:key="result.landmarkId"
      v-on:click.prevent="selectLandmark(result)"
    >
      <div class="row">
        <div class="col">
          <p>{{ result.name }}</p>
          <p>{{ result.venueType }}</p>
          <p>{{ result.address }}</p>
        </div>
        <div class="col">
          <img v-bind:src="getImagePath(result.images)" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    results: Array
  },

  methods: {
    selectLandmark(landmark) {
      this.$emit("selectLandmark", landmark);
    },
    getImagePath(image) {
      return require(`@/assets/${image}`);
    }
  }
};
</script>

<style scoped>
.search-result {
  border: black solid 1px;
  padding: 3px;
  margin: 4px;
  background-color: whitesmoke;
  border-radius: 5px;
  box-shadow: 2px 1px 2px rgb(187, 181, 181);
}

#searchResults {
  overflow: auto;
  width: 100%;
  height: 500px;
  padding: 0px;
}

.col img {
  width: 100%;
  height: auto;
}
</style>
