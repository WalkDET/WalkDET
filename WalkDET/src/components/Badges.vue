<template>
  <div class="badges">
    <div class="card-deck">
      <div class="card shadow">
        <div class="card-header">
          <h1 class="card-header-text">Badges</h1>
        </div>
        <div id="card-content">
          <div
            class="card-block"
            v-for="badge in acquiredBadges"
            v-bind:key="badge.name"
          >
            <img
              v-bind:class="[
                badge.completed ? 'badge-img-completed' : 'badge-img'
              ]"
              v-bind:src="badge.imgLink"
            />
            <div class="badge-text">
              <h3 class="card-text">{{ badge.name }}</h3>
              <p class="card-text">{{ badge.description }}</p>
            </div>
          </div>
        </div>
        <div id="icon-credit">
          Icons made by
          <a
            href="https://www.flaticon.com/authors/pixel-perfect"
            title="Pixel perfect"
            >Pixel perfect</a
          >
          from
          <a href="https://www.flaticon.com/" title="Flaticon"
            >www.flaticon.com</a
          >
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
export default {
  props: {
    acquiredBadges: Array
  },
  data() {
    return {
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

  components: {
    Header
  }
};
</script>

<style>
.badges {
  padding: 12px;
}

.card-header {
  background-color: #007995;
}
.card-header-text {
  color: white;
}
.card-block {
  word-wrap: normal;
  margin: 15px;
  display: flex;
  width: 100%;
  height: 25%;
  padding-left: 2%;
  margin: 2%;
}
#card-content {
  padding-bottom: 4%;
}

.badge-img {
  width: 25%;
  height: 25%;
  border: 2px solid teal;
  padding: 2%;
  border-radius: 22px;
  filter: brightness(20%);
}
.badge-img-completed {
  width: 25%;
  height: 25%;
  border: 2px solid teal;
  padding: 2%;
  border-radius: 22px;
  filter: brightness(100%);
  background-color: gold;
}
.badge-text {
  margin-left: 1vw;
  margin-top: 1vw;
  text-align: left;
  max-width: 70%;
}

.badge-text h3 {
  font-size: 6vw;
}
.badge-text p {
  font-size: 3vw;
}
/* If the screen size is 601px wide or more, set the font-size of <div> to 80px */
@media screen and (min-width: 650px) {
  .badge-text p {
    font-size: 1.5vw;
  }
  .badge-text h3 {
    font-size: 2.5vw;
  }
}

#icon-credit {
  font-size: 6pt;
  color: rgb(175, 175, 175);
  margin-left: 10px;
}
</style>
