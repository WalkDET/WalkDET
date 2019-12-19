  
<template>
    <div id="logout">
  Logout
    </div>
</template>
<script>
  import auth from '@/auth.js'
  export default {
    data (){
      return {
      }
    },
    created(){
      auth.logout();
      this.$router.go(-1);
    }
  }
</script>