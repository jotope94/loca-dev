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
        async DeletePost() {
            await api.delete("/posts/" + this.$route.params.id)
            this.getPost()
        },

         async getPost() {
            await this.$router.push('/get-post')
        }
    },
})
</script>

<template>
    <div class='component'>
        <div class="form-post">
            <div>
                <label for="input-title">Tem certreza que quer excluir post?</label>
            </div>
            <button @click="DeletePost">Sim</button>
            <button @click="getPost">Não</button>
        </div>
    </div>
</template>