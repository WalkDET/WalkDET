<template>
  <div id="map">
    <div id="mapid"></div>
  </div>
</template>

<script>
import auth from "@/auth.js";

export default {
  data() {
    return {
      landmarks: [],
      selectedLandmark: {},
      map: null,
      tileLayer: null,
      userCoordinateX: "",
      userCoordinateY: "",
      control: L.routing.control({
        waypoints: [],
        fitSelectedRoutes: false
      }),
      icon: new L.Icon({
        iconUrl:
          "https://cdn.rawgit.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-red.png",
        shadowUrl:
          "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowSize: [41, 41]
      }),
      layers: [
        {
          id: 0,
          name: "Landmarks",
          active: true,
          features: [
            {
              id: 0,
              name: "TechTown",
              type: "marker",
              coords: [42.365022, -83.072992]
            }
          ]
        }
      ]
    };
  },
  methods: {
    createMap() {
      this.map = L.map("mapid").setView([42.35, -83.05], 13);
      this.map.locate({ setView: true, maxZoom: 14 });
      this.map.on("locationfound", this.onLocationFound);
      this.map.on("locationerror", this.onLocationError);

      L.tileLayer(
        `https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoidG9tcGhpbGxpcHNtdXNpYyIsImEiOiJjazQwMG5qOXAwZ3liM2ZwcDE4d2tjaHAzIn0.9ZjDDKXmM2ilPG2_FGByRA`,
        {
          attribution:
            'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
          maxZoom: 18,
          id: "mapbox/streets-v11"
        }
      ).addTo(this.map);
    },

    onLocationFound(e) {
      const radius = e.accuracy;
      const redIcon = new L.Icon({
        iconUrl:
          "https://cdn.rawgit.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-red.png",
        shadowUrl:
          "https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png",
        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowSize: [41, 41]
      });

      this.userCoordinateX = e.latlng.lat;
      this.userCoordinateY = e.latlng.lng;

      L.marker(e.latlng)
        .addTo(this.map)
        .bindPopup("You are within " + radius + " meters from this point")
        .openPopup();

      L.circle(e.latlng, radius).addTo(this.map);
    },
    onLocationError(e) {
      alert(e.message);
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
          this.createMarkers();
        })
        .catch(err => console.error(err));
    },
    createMarkers() {
      this.landmarks.forEach(landmark => {
        let marker = L.marker([landmark.coordinateX, landmark.coordinateY], {
          icon: this.icon
        }).addTo(this.map);
        marker.bindPopup(landmark.name);
        marker.on("click", () => this.selectLandmark(landmark));
      });
    },
    selectLandmark(landmark) {
      this.selectedLandmark = landmark;
      this.control.spliceWaypoints(0, 2);
      this.control.remove(this.map);
      this.control = L.Routing.control({
        waypoints: [
          L.latLng(this.userCoordinateX, this.userCoordinateY),
          L.latLng(
            this.selectedLandmark.coordinateX,
            this.selectedLandmark.coordinateY
          )
        ],
        fitSelectedRoutes: false,
        units: "imperial",
        draggableWaypoints: false
      }).addTo(this.map);

      this.$emit("selected-landmark", landmark);
    }
  },
  mounted() {
    this.getLandmarks();
    this.createMap();
  }
};
</script>

<style>
/* #mapid {
  height: 615px;
  height: 100vh;
  width: 66.5vw;
  margin: 0;
} */

#mapid {
  /* height: 615px; */
  height: 100vh;
  width: 100vw;
  margin: 0;
}
.leaflet-top {
  padding-top: 100px;
}

.leaflet-control-container {
  position: absolute;
  right: 56px;
}


@media only screen and (max-width: 768px) {
  /* #mapid {
    height: 100vh;
    width: 97.5vw;
    margin: 0px;
  } */
  .leaflet-top {
    padding-top: 0;
  }

  .leaflet-routing-alt {
    display: none;
  }

  .leaflet-control-zoom {
  top: 8vh;
}
}
</style>
