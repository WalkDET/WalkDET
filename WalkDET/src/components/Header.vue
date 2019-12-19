<template>
  <div id="header">
    <header>
      <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <img
          id="skyline-photo"
          src="https://suite104.com/wp-content/uploads/2017/03/DetroitSKYLINEFULL-01.png"
        />
        <router-link v-bind:to="{ name: 'home' }" class="navbar-brand">WalkDET</router-link>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <router-link v-bind:to="{ name: 'home' }" class="nav-link">
                Home
                <span class="sr-only">(current)</span>
              </router-link>
            </li>
            <li class="nav-item" v-if="!isLoggedIn">
              <router-link v-bind:to="{ name: 'login' }" class="nav-link">Login</router-link>
            </li>
            
            <li class="nav-item" v-if="!isLoggedIn">
              <router-link v-bind:to="{ name: 'register' }" class="nav-link">Sign Up</router-link>
            </li>
             <li class="nav-item dropdown" v-if="isLoggedIn">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="navbardrop"
            data-toggle="dropdown"
          ><i class="fa fa-user-circle-o"/> Your Profile</a>
          <div class="dropdown-menu">
            <router-link v-bind:to="{ name: 'stats' }" class="dropdown-item">Awards</router-link>
            <router-link v-bind:to="{ name: 'itinerary' }" class="dropdown-item">Itinerary</router-link>
            <router-link v-if="isAdmin" v-bind:to="{ name: 'administrator' }" class="dropdown-item">Administrator</router-link>
            <router-link v-bind:to="{ name: 'logout' }" class="dropdown-item">Logout</router-link>
          </div>
        </li>
          </ul>
        
       
        </div>
      
      </nav>
    </header>
  </div>
</template>

<script>
import auth from "@/auth.js";
export default {
  data() {
    return {
      isLoggedIn: false,
      role : auth.getUser().rol
    };
  },
  computed: {
    isAdmin(){
      return this.role === "admin";
    }
  },
  methods: {
    checkIfLoggedIn() {
      if (auth.getToken() == null) {
        this.isLoggedIn = false;
      } else {
        this.isLoggedIn = true;
      }
    }
  },
  created() {
    this.checkIfLoggedIn();
  }
};
</script>

<style>

header {
  position: fixed;
  z-index: 2;
}
.navbar {
  /* height: 70px; */
}
#skyline-photo {
  width: 12%;
  height: 10%;
}

#city-banner {
  width: 30%;
  height: auto;
}




</style>
