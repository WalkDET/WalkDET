<template>
  <div id="landmark-info">
    <div id="landmark-name">
      <h3>{{ selectedLandmark.name }}</h3>
    </div>
    <div id="landmark-type">
      <strong> <i class="fa fa-map-marker"></i> Landmark Type: </strong>
      {{ selectedLandmark.venueType }}
    </div>
    <div id="landmark-address">
      <strong> <i class="fa fa-address-book-o"></i> Address: </strong>
      {{ selectedLandmark.address }}
    </div>
    <div id="landmark-description">
      <strong>Description:</strong>
      {{ selectedLandmark.description }}
    </div>
    <div id="landmark-img">
      <img v-bind:src="getImagePath(selectedLandmark.images)" />
    </div>
    <h5>
      <strong> <i class="fa fa-calendar"></i> Hours: </strong>
    </h5>
    <div id="landmark-sunday">Sunday: {{ selectedLandmark.sunday }}</div>
    <div id="landmark-sunday">Monday: {{ selectedLandmark.monday }}</div>
    <div id="landmark-sunday">Tuesday: {{ selectedLandmark.tuesday }}</div>
    <div id="landmark-sunday">Wednesday: {{ selectedLandmark.wednesday }}</div>
    <div id="landmark-sunday">Thursday: {{ selectedLandmark.thursday }}</div>
    <div id="landmark-sunday">Friday: {{ selectedLandmark.friday }}</div>
    <div id="landmark-sunday">Saturday: {{ selectedLandmark.saturday }}</div>
    <div id="landmark-website">
      <a v-bind:href="selectedLandmark.website"
        >Learn more about {{ selectedLandmark.name }}</a
      >
    </div>
  </div>
</template>

<script>
export default {
  props: {
    selectedLandmark: {}
  },
  methods: {
    getImagePath(landmarkImage) {
      return require(`@/assets/${landmarkImage}`);
    }
  },
  data() {
    return {
      landmark: {
        landmarkId: 0,
        name: "Campus Martius",
        address: "800 Woodward Ave, Detroit, MI 48226",
        coordinateX: 42.33185,
        coordinateY: -83.046451,
        venueType: "History",
        description:
          "Campus Martius Park is the heart of downtown Detroit, hosting concerts, food trucks, ice skating and family friendly activities all year long.",
        website: "http://downtowndetroitparks.com/parks/Campus-Martius",
        image: "@/assets/ford-field.jpg",
        sunday: "6AM-10PM",
        monday: "6AM-10PM",
        tuesday: "6AM-10PM",
        wednesday: "6AM-10PM",
        thursday: "6AM-10PM",
        friday: "6AM-10PM",
        saturday: "6AM-10PM"
      }
    };
  }
};
</script>

<style>
#landmark-info {
  /* height: 700px; */
  height: 50vh;
  /* overflow: auto; */
  padding: 1%;
}

#landmark-info div {
  padding: 5px;
}

#landmark-img img {
  width: 100%;
  height: auto;
}
</style>
