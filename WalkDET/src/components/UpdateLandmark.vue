<template>
  <div id="update-landmark">
    <div class="card">
      <div class="card-header">
        <h1 class="card-header-text">Update A landmark</h1>
      </div>
      <div class="card-block">
        <form class="form">
          <select
            v-model="selectedLandmark"
            class="form-control"
            onfocus="this.size=10"
            onblur="this.size=1"
            onchange="this.size=1; this.blur()"
          >
            <option
              v-for="landmark in landmarks"
              v-bind:key="landmark.name"
              v-bind:value="landmark"
              >{{ landmark.name }}</option
            >
          </select>
          <!-- <button type="submit" class="btn btn-secondary bnt-dark">Update Landmark</button> -->
          <!-- </form> -->

          <!-- <form class="form"> -->
          <input
            type="text"
            id="name"
            class="form-control"
            placeholder="location name"
            v-model="selectedLandmark.name"
          />
          <input
            type="text"
            id="type"
            class="form-control"
            placeholder="type"
            v-model="selectedLandmark.venueType"
          />
          <input
            type="text"
            id="address"
            class="form-control"
            placeholder="address"
            v-model="selectedLandmark.address"
          />
          <input
            type="textarea"
            id="description"
            class="form-control"
            placeholder="description"
            v-model="selectedLandmark.description"
          />
          <input
            type="text"
            id="sunday"
            class="form-control"
            placeholder="sunday hours"
            v-model="selectedLandmark.sunday"
          />
          <input
            type="text"
            id="monday"
            class="form-control"
            placeholder="monday hours"
            v-model="selectedLandmark.monday"
          />
          <input
            type="text"
            id="tuesday"
            class="form-control"
            placeholder="tuesday hours"
            v-model="selectedLandmark.tuesday"
          />
          <input
            type="text"
            id="wednesday"
            class="form-control"
            placeholder="wednesday hours"
            v-model="selectedLandmark.wednesday"
          />
          <input
            type="text"
            id="thursday"
            class="form-control"
            placeholder="thursday hours"
            v-model="selectedLandmark.thursday"
          />
          <input
            type="text"
            id="friday"
            class="form-control"
            placeholder="friday hours"
            v-model="selectedLandmark.friday"
          />
          <input
            type="text"
            id="saturday"
            class="form-control"
            placeholder="saturday hours"
            v-model="selectedLandmark.saturday"
          />
          <button
            v-on:click.prevent="updateLandmark"
            class="btn btn-secondary bnt-dark"
          >
            Submit Updated Landmark
          </button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import auth from "@/auth.js";

export default {
  data() {
    return {
      landmarks: [],
      selectedLandmark: {}
    };
  },
  methods: {
    landmarkSelected(landmark) {
      this.selectedLandmark = { ...this.landmark };
    },

    getLandmarks() {
      const url = `${process.env.VUE_APP_REMOTE_API}/api/landmarks`;
      fetch(url, {
        method: "GET",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        },
      })
        .then(response => response.json())
        .then(landmarks => {
          this.landmarks = landmarks;
        })
        .catch(err => console.error(err));
    },
    updateLandmark() {
      const url = `${process.env.VUE_APP_REMOTE_API}/api/landmarks/role/${
        auth.getUser().rol
      }`;
      console.log(url);
      fetch(url, {
        method: "PUT",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(this.selectedLandmark)
      })
        .then(response => response.json())
        .then(jsondata => console.log(jsondata))
        .then(() => {
          alert(`${this.selectedLandmark.name} has been updated!`);
          this.selectedLandmark = {};
        })
        .catch(err => console.error(err));
    }
  },
  created() {
    this.getLandmarks();
  }
};
</script>

<style>
#update-landmark {
  padding-top: 150px;
}
.card {
  margin: 30px;
}
</style>
