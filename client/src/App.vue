<script setup lang="ts">
import HelloWorld from './components/HelloWorld.vue'
import Posts from './components/Posts.vue'
import GetPost from './components/GetPost.vue'

</script>

<template>
  <nav class='menu'>
    <h1>Menu</h1>
    <div><router-link to="/posts">Criar Post</router-link></div>
    <div><router-link to="/get-post">Mostrar Posts</router-link></div>
  </nav>
  <router-view/>
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}

</style>
