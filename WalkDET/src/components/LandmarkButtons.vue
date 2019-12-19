<template>
  <div id="landmark-buttons">
    <button
      type="button"
      class="btn btn-light btn-sm btn-inline-block"
      v-on:click="userChecksIn"
    >
      Check In
    </button>
    <button type="button" class="btn btn-light btn-sm btn-inline-block" v-on:click="userAddsItinerary">
      Add to Itinerary
    </button>
  </div>
</template>

<script>
import auth from "@/auth.js";

export default {
  props: {
    selectedLandmark: Object
  },
  data() {
    return {
      checkIn: {
        username: auth.getUser().sub,
        landmarkId: 0
      },
      itinerary: {
        username: auth.getUser().sub,
        landmkarId: 0
      }
    };
  },
  methods: {
    userChecksIn() {
      if (this.selectedLandmark.name == undefined) {
        alert("You need to select a landmark");
      } 
      else {
        this.checkIn.landmarkId = this.selectedLandmark.landmarkId;
        this.saveCheckIn();
        alert(
          `${this.checkIn.username} has checked in at ${this.selectedLandmark.name}!`
        );
      }
    },
    userAddsItinerary() {
      if (this.selectedLandmark.name == undefined) {
        alert("You need to select a landmark");
      } 
      else {
        this.itinerary.landmarkId = this.selectedLandmark.landmarkId;
        this.saveItinerary();
        alert(
          `${this.checkIn.username} has added ${this.selectedLandmark.name} to their itinerary!`
        );
      }
    },
    saveCheckIn() {
      const url = `${process.env.VUE_APP_REMOTE_API}/api/checkins`;
      fetch(url, {
        method: "POST",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(this.checkIn)
      })
        .then(response => response.json())
        .catch(err => console.error(err));
    },
    saveItinerary() {
      const url = `${process.env.VUE_APP_REMOTE_API}/api/itinerary`;
      fetch(url, {
        method: "POST",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(this.itinerary)
      })
        .then(response => response.json())
        .catch(err => console.error(err));
    },
    created() {
      this.user = auth.getUser();
    }
  }
};
</script>

<style>
button {
  width: 48%;
  margin-left: 1%;
  margin-right: 1%;
}
#landmark-buttons {
  width: 100%;
  padding-top: 12px;
  padding-left: 4px;
  padding-right: 4px;
  padding-bottom: 0;
  background-color: #007995;
  /* border: 2px solid #007995; */
  /* background-color: rgba(68, 188, 236, 0.8); */
}
</style>
