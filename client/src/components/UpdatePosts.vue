<script lang="ts">
import { defineComponent } from 'vue'
import api from '../http.ts'

export default defineComponent({
    data() {
        return {
            title: '',
            body: ''
        }
    },
    methods: {
        async UpdatePost() {
            await api.put("/posts/" + this.$route.params.id, { title: this.title, body: this.body })
            await this.$router.push('/get-post')
        },
    },

    created() {
        this.title = this.$route.query.title
        this.body = this.$route.query.body
    },

    async ReturnMenu() {
        await this.$router.push('/')
    },

})
</script>

<template>
    <div class='component'>
        <div class="form-post">
            <div>
                <label for="input-title">Title:</label><br>
                <input type="text" id="input-title" v-model="title">
            </div>
            <div>
                <label for="input-body">Body:</label><br>
                <textarea id="input-body" v-model="body" />
            </div>
            <button @click="UpdatePost">Salve</button>
            
        </div>
        <button @click="ReturnMenu">Retornar Menu</button>
    </div>
</template>