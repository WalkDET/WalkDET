<template>
  <div class="visit-hist">
    <div class="card shadow">
      <div class="card-header">
        <h1 class="card-header-text">
          Check In History {{ totalLandmarksVisitedByUser }}/{{
            totalLandmarks
          }}
        </h1>
      </div>
      <div class="card-block card-block-table">
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">Landmark</th>
              <th scope="col">Venue Type</th>
              <th scope="col">Date</th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="visitedLandmark in visitedLandmarks"
              v-bind:key="visitedLandmark.name"
            >
              <td>
                {{ visitedLandmark.name }}
              </td>
              <td>
                {{ visitedLandmark.type }}
              </td>
              <td>
                {{ visitedLandmark.date }}
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
      tempCheckIn: {
        name: "",
        type: "",
        date: ""
      },
      checkIns: [],
      landmarks: [],
      visitedLandmarks: [],
      tempLandmark: {},
      badges: [
        {
          name: "Defender of the Land",
          imgLink: require("@/assets/defenderBadge.png"),
          description: "Awarded for visiting every location",
          completed: false
        },
        {
          name: "Sports Enthusiast",
          imgLink: require("@/assets/sportsBadge.png"),
          description: "Awarded for visiting all of the sports stadiums",
          completed: false
        },
        {
          name: "Tree Hugger",
          imgLink: require("@/assets/treeHuggerBadge.png"),
          description: "Awarded for visiting five DET parks",
          completed: false
        }
      ],
      completedBadges: this.acquiredBadges,
      badgeCompleted: "badge-img-completed",
      badgeImg: "badge-img"
    };
  },
  computed: {
    totalLandmarks() {
      return this.landmarks.length;
    },
    totalLandmarksVisitedByUser() {
      let userLandmarks = [];
      this.visitedLandmarks.forEach(landmark => {
        if (!userLandmarks.includes(landmark.name)) {
          userLandmarks.push(landmark.name);
        }
      });
      return userLandmarks.length;
    },
    totalNumberOfArenas() {
      let totalNumberOfArenas = 0;
      this.landmarks.forEach(landmark => {
        if (landmark.venueType === "Sports Arena") {
          totalNumberOfArenas++;
        }
      });
      return totalNumberOfArenas;
    },
    totalNumberOfArenasVisited() {
      let arenasVisited = [];
      this.visitedLandmarks.forEach(landmark => {
        if (!arenasVisited.includes(landmark.name)) {
          if (landmark.type === "Sports Arena")
            arenasVisited.push(landmark.name);
        }
      });
      console.log(arenasVisited);
      return arenasVisited.length;
    },
    totalNumberOfParks() {
      let totalNumberOfParks = 0;
      this.landmarks.forEach(landmark => {
        if (landmark.venueType === "Parks") {
          totalNumberOfParks++;
        }
      });
      return totalNumberOfParks;
    },
    totalNumberOfParksVisited() {
      let parksVisited = [];
      this.visitedLandmarks.forEach(landmark => {
        if (!parksVisited.includes(landmark.name)) {
          if (landmark.type === "Parks") parksVisited.push(landmark.name);
        }
      });
      return parksVisited.length;
    }
  },
  methods: {
    getCheckIns() {
      const url = `${process.env.VUE_APP_REMOTE_API}/api/checkins/${
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
        .then(checkIns => {
          checkIns.forEach(checkIn => {
            this.checkIns.push(checkIn);
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
          this.getCheckIns();
        })
        .catch(err => console.error(err));
    },
    formatTableArray() {
      this.checkIns.forEach(checkIn => {
        this.findLandmark(checkIn.landmarkId);

        let tempCheckIn = {
          name: this.tempLandmark.name,
          type: this.tempLandmark.venueType,
          date: checkIn.checkInDate
        };
        this.visitedLandmarks.unshift(tempCheckIn);
      });
      this.checkForBadges();
    },
    findLandmark(id) {
      this.landmarks.forEach(landmark => {
        if (landmark.landmarkId == id) {
          this.tempLandmark = landmark;
        }
      });
    },
    checkForBadges() {
      if (this.totalLandmarksVisitedByUser === this.totalLandmarks) {
        this.badges[0].completed = true;
      }

      if (this.totalNumberOfArenasVisited === this.totalNumberOfArenas) {
        this.badges[1].completed = true;
      }

      if (this.totalNumberOfParksVisited === this.totalNumberOfParks) {
        this.badges[2].completed = true;
      }

      this.$emit("badgeResults", this.badges);
    }
  },
  created() {
    this.getLandmarks();
  }
};
</script>

<style>


.visit-hist {
  padding: 12px;
}

.card-block-table {
  height: 500px;
  overflow: auto;
  padding: 0px;
  margin: 0px;
}
</style>
