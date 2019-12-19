<template>
  <div id="login" class="text-center">
    <Header></Header>
    <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4">
        <form class="form-signin" @submit.prevent="login">
          <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
          <div
            class="alert alert-danger"
            role="alert"
            v-if="invalidCredentials"
          >
            Invalid username and password!
          </div>
          <div
            class="alert alert-success"
            role="alert"
            v-if="this.$route.query.registration"
          >
            Thank you for registering, please sign in.
          </div>
          <label for="username" class="sr-only">Username</label>
          <input
            type="text"
            id="username"
            class="form-control"
            placeholder="Username"
            v-model="user.username"
            required
            autofocus
          />
          <label for="password" class="sr-only">Password</label>
          <input
            type="password"
            id="password"
            class="form-control"
            placeholder="Password"
            v-model="user.password"
            required
          />
          <div id="log-in-bottom">
            <router-link :to="{ name: 'register' }"
              >Need an account?</router-link
            >
            <button type="submit" class="btn btn-primary">Sign in</button>
          </div>
        </form>
      </div>
      <div class="col-md-4"></div>
    </div>
  </div>
</template>

<script>
import auth from "../auth";
import Header from "@/components/Header.vue";

export default {
  name: "login",
  components: {
    Header
  },
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/login`, {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(this.user)
      })
        .then(response => {
          if (response.ok) {
            return response.text();
          } else {
            this.invalidCredentials = true;
          }
        })
        .then(token => {
          if (token != undefined) {
            if (token.includes('"')) {
              token = token.replace(/"/g, "");
            }
            auth.saveToken(token);
            this.$router.push("/");
          }
        })
        .catch(err => console.error(err));
    }
  }
};
</script>

<style>
#log-in-bottom {
  display:flex;
  flex-direction: row;
  justify-content: space-around;
}

form input {
  padding: 10px;
  margin: 10px;
}

.form-signin {
  margin-top: 10vh;
}
#login {
  /* background-image: url("assets/detroitMap.jpg"); */
  background-image: url("../assets/detroitMap.jpg");
  background-color: rgba(225, 243, 242, 0.9);
  background-blend-mode: lighten;
  background-attachment: fixed;
  background-position: center center;
  background-repeat: repeat-y;
  background-size: cover;

  height: 100vh;
  
  

  /* background: url("../assets/detroitMap.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;  */

  }
  </style>
