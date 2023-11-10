import { createRouter, createWebHistory } from 'vue-router'
import HelloWorld from './components/HelloWorld.vue'
import MyHello from './components/MyHello.vue'
import Posts from './components/Posts.vue'
import GetPosts from './components/GetPost.vue'
import UpdatePosts from './components/UpdatePosts.vue'
import DeletePosts from './components/DeletePost.vue'

const routes: Array<RouteRecordRaw> = [
    {
        path: '/hello',
        name: 'hello',
        component: HelloWorld
    },
    {
        path: '/myhello',
        name: 'my-hello',
        component: MyHello
    },
    {
        path: '/posts',
        name: 'posts',
        component: Posts
    },
    {
        path: '/get-post',
        name: 'get',
        component: GetPosts
    },
    {
        path: '/edit-post/:id',
        name: 'update',
        component: UpdatePosts
    },
    {
        path: '/delete-post/:id',
        name: 'delete',
        component: DeletePosts
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router