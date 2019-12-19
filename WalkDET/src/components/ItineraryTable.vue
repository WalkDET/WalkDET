<template>
  <div class="itin-table">
    <div class="card shadow">
      <div class="card-header">
        <h1 class="card-header-text">Itinerary</h1>
      </div>
      <div class="card-block card-block-table">
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">Landmark</th>
              <th scope="col">Venue Type</th>
              <th scope="col">
                <button class="btn btn-danger" v-on:click="removeAll">Clear Itinerary</button>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="item in itinerary" v-bind:key="item.name">
              <td>{{ item.name }}</td>
              <td>{{ item.type }}</td>
              <td>
                <button
                  class="btn btn-danger"
                  v-on:click="removeItem(item.name)"
                >
                  Remove
                </button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import auth from "../auth";

export default {
  data() {
    return {
      itineraryList: [],
      landmarks: [],
      itinerary: [],
      tempLandmark: {}
    };
  },
  methods: {
    getItinerary() {
      const url = `${process.env.VUE_APP_REMOTE_API}/api/itinerary/${
        auth.getUser().sub
      }`;
      fetch(url, {
        method: "GET",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        }
      })
        .then(response => response.json())
        .then(landmarks => {
          landmarks.forEach(landmark => {
            this.itineraryList.push(landmark);
          });
        })
        .then(() => {
          this.formatTableArray();
        })
        .catch(err => console.error(err));
    },
    getLandmarks() {
      const url = `${process.env.VUE_APP_REMOTE_API}/api/landmarks`;
      fetch(url, {
        method: "GET",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        }
      })
        .then(response => response.json())
        .then(landmarks => {
          this.landmarks = landmarks;
        })
        .then(() => {
          this.getItinerary();
        })
        .catch(err => console.error(err));
    },
    formatTableArray() {
      this.itineraryList.forEach(item => {
        console.log(item.name);
        this.findLandmark(item.name);

        let tempItinerary = {
          name: this.tempLandmark.name,
          type: this.tempLandmark.venueType
        };
        this.itinerary.unshift(tempItinerary);
      });
    },
    findLandmark(name) {
      this.landmarks.forEach(landmark => {
        if (landmark.name == name) {
          this.tempLandmark = landmark;
        }
      });
    },
    removeItem(landmarkName) {
      this.findLandmark(landmarkName);
      const landmarkId = this.tempLandmark.landmarkId;
      const url = `${process.env.VUE_APP_REMOTE_API}/api/itinerary/${
        auth.getUser().sub
      }/${landmarkId}`;
      fetch(url, {
        method: "DELETE",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        }
      })
        .then(() => {
          this.itinerary = [];
          this.itineraryList = [];
          this.getItinerary();
        })

        .catch(err => console.error(err));
    },
    removeAll() {
 const url = `${process.env.VUE_APP_REMOTE_API}/api/itinerary/${
        auth.getUser().sub
      }`;
      fetch(url, {
        method: "DELETE",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        }
      })
        .then(() => {
          this.itinerary = [];
          this.itineraryList = [];
          this.getItinerary();
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
.itin-table {
  padding-left: 15%;
  padding-right: 15%;
  padding-top: 5%;
}

.card-block-table {
  height: 500px;
  overflow: auto;
  padding: 0px;
  margin: 0px;
}
</style>
