<script lang="ts">
import { defineComponent } from 'vue'
import api from '../http.ts'

export default defineComponent({
    data() {
        return {
            posts: []
        }
    },

    methods: {
        async loadPosts() {
            const response = await api.get("/posts")
            this.posts = response.data
        }
    },

    async mounted() {
        await this.loadPosts()
    }
})
</script>

<template>
    <div class='component'>
        <h1>Posts</h1>

        <div v-for="post in posts">
            <div class='get-container'>
                <h3>{{ post.title }}</h3>
                <p>{{ post.body }}</p>
                <router-link :to="{name: 'update',params: { id: post.id}, query: {title: post.title, body: post.body } }"> Editar</router-link><br>
                <router-link :to="{name: 'delete',params: { id: post.id } }">Deletar</router-link>
            </div>
            <br>
        </div>
    </div>
</template>

<style scoped>
    .get-container {
        background-color: #504b4b;
        width: 700px;
        height: 200px;
        padding: 20px;
        margin: 20px 0;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .get-post-container h1 {
        background-color: #ddd;
        padding: 10px;
        margin-bottom: 20px;
    }
</style>

