<template>
  <div id="search-bar">
    <div class="form-group has-search">
      <div class="input-group md-form form-sm form-2 pl-0">
        <input
          type="text"
          class="form-control"
          placeholder="Search for landmarks"
          v-on:keyup.enter="performSearch"
          v-model="search"
        />
        <div class="input-group-append">
          <span
            class="input-group-text amber lighten-3"
            v-on:click="performSearch"
            id="basic-text1"
          >
            <i class="fa fa-search text-grey" aria-hidden="true"></i>
          </span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import auth from "@/auth.js";
export default {
  data() {
    return {
      search: "",
      results: [],
      searchUrl: `${process.env.VUE_APP_REMOTE_API}/api/landmarks`
    };
  },

  methods: {
    performSearch() {
      fetch(this.searchUrl, {
        method: "GET",
        headers: {
          Authorization: "Bearer " + auth.getToken(),
          Accept: "application/json",
          "Content-Type": "application/json"
        }
      })
        .then(response => response.json())
        .then(landmarks => {
          this.results = landmarks.filter(landmark => {
            return landmark.name
              .toUpperCase()
              .includes(this.search.toUpperCase());
          });
          if (this.results.length === 0) {
            this.results = landmarks.filter(landmark => {
              return landmark.venueType
                .toUpperCase()
                .includes(this.search.toUpperCase());
            });
          }
          this.$emit("searchResults", this.results);
        })
        .catch(err => console.error(err));
    }
  }
};
</script>

<style>
#search-bar {
  width: 100%;
  padding-top: 14px;
  padding-left: 8px;
  padding-right: 8px;
  padding-bottom: 0.5px;
  background-color: #007995;
  /* background-color: rgba(68, 188, 236, 0.8); */
}

.has-search .form-control {
  /* padding-left: 2.375rem; */
}

.has-search .form-control-feedback {
  position: absolute;
  /* z-index: 2; */
  /* display: block; */
  width: 2.375rem;
  /* height: 2.375rem; */
  line-height: 2.375rem;
  text-align: center;
  /* pointer-events: none; */
  color: #aaa;
}
.btn-secondary {
  /* width: 15px; */
}
.input-group-append {
  /* width:20px; */
}
</style>
