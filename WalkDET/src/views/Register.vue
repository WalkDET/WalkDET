<template>
  <div id="register" class="text-center">
    <Header></Header>
    <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4">
        <form class="form-register" @submit.prevent="register">
          <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
          <div
            class="alert alert-danger"
            role="alert"
            v-if="registrationErrors"
          >
            There were problems registering this user.
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
          <input
            type="password"
            id="confirmPassword"
            class="form-control"
            placeholder="Confirm Password"
            v-model="user.confirmPassword"
            required
          />
          <router-link :to="{ name: 'login' }">
            Have an account?
          </router-link>
          <button class="btn btn-lg btn-primary btn-block" type="submit">
            Create Account
          </button>
        </form>
      </div>
      <div class="col-md-4"></div>
    </div>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";

export default {
  name: "register",
  components: {
    Header
  },
  data() {
    return {
      user: {
        username: "",
        password: "",
        confirmPassword: "",
        role: "user"
      },
      registrationErrors: false
    };
  },
  methods: {
    register() {
      fetch(`${process.env.VUE_APP_REMOTE_API}/register`, {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify(this.user)
      })
        .then(response => {
          if (response.ok) {
            this.$router.push({
              path: "/login",
              query: { registration: "success" }
            });
          } else {
            this.registrationErrors = true;
          }
        })

        .then(err => console.error(err));
    }
  }
};
</script>

<style>
#register {
 /* background-image: url("assets/detroitMap.jpg"); */
  background-image: url("../assets/detroitMap.jpg");
  background-color: rgba(225, 243, 242, 0.9);
  background-blend-mode: lighten;
  background-attachment: fixed;
  background-position: center center;
  background-repeat: repeat-y;
  background-size: cover;

  height: 100vh;
  }

  .form-register {
    margin-top: 10vh;
  }

</style>
