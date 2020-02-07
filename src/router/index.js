import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },

  {
    path: '/domain',
    name: 'domain',
    component: () => import('../views/Domain.vue')
  },
  {
    path: '/tools',
    name: 'tools',
    component: () => import('../views/Tools.vue')
  },
  {
    path: '/nav',
    name: 'nav',
    component: () => import('../views/Nav.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
