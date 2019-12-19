<template>
  <div id="welcome-banner">
    <!-- <div class="row"> -->
    <!-- <div class="col"></div> -->
    <!-- <div class="col welcome"> -->
    <div id="welcome-message">
      <img
        id="city-banner"
        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4_cf_h3AQzzxwF3YbSGzUiR8jdqn_Cr5x_7HvfM-zIw53Se1H&s"
      />
      <h3 id="welcome-banner-text">Welcome to WalkDET!</h3>
    </div>

    <!-- </div> -->
    <!-- <div class="col"></div> -->
    <!-- </div> -->
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
#city-banner {
  width: 100%;
  height: auto;
}

#welcome-banner {
  text-align: center;
  padding-top: 80px;
}

@media only screen and (max-width: 760px) {
  #welcome-banner {
    text-align: center;
    padding-top: 0;
    display: none;
  }
  
}

.welcome {
  /* background-color: rgba(255, 255, 255, 1);
  border-radius: 10px;
  box-shadow: 1px 1px 5px 3px rgba(0, 0, 0, 0.5);
  margin-top: 10px;
  margin-bottom: 10px;
  border: 1px solid #343A40; */
}
</style>