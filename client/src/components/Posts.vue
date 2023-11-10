<script lang="ts">
import { defineComponent } from 'vue'
import api from '../http.ts'

export default defineComponent({
    data() {
        return {
            posts: [] as Post[],
           title: '',
           body: ''
        }
    },
    methods: {
        async createPost() {
            await api.post("/posts", { title: this.title, body: this.body })
            await this.$router.push('/get-post')
        }
    }
})
</script>

<template>
    <div class='component'>
        <div class="form-post">
            <div class="form-group">
                <label for="input-title">Title:</label>
                <input type="text" id="input-title" v-model="title">
            </div>
            <div class="form-group">
                <label for="input-body">Body:</label>
                <textarea id="input-body" v-model="body" />
            </div>
            <button @click="createPost">Salve</button>
        </div>
    </div>
</template>

<style scoped>
.form-post {
  max-width: 400px; /* Ajuste conforme necessário */
  margin: auto;
  padding: 20px;
  background-color: #423e3e;
  border: 1px solid #ddd;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.form-group {
  margin-bottom: 15px;
}

label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
}

.form-control {
  width: 100%;
  padding: 8px;
  border: 1px solid #050404;
  border-radius: 4px;
}

textarea.form-control {
  resize: vertical;
  height: 100px; /* Ajuste conforme necessário */
}

.btn-save {
  background-color: #4caf50;
  color: rgb(0, 0, 0);
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.btn-save:hover {
  background-color: #45a049;
}
</style>