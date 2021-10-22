import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/shijuanliebiao/exam'
    import shangpinjinhuo from '@/views/modules/shangpinjinhuo/list'
    import xiaoshoubu from '@/views/modules/xiaoshoubu/list'
    import gongyingshang from '@/views/modules/gongyingshang/list'
    import xitonggonggao from '@/views/modules/xitonggonggao/list'
    import shangpinfenlei from '@/views/modules/shangpinfenlei/list'
    import xiaoshoudingdan from '@/views/modules/xiaoshoudingdan/list'
    import shangpinxinxi from '@/views/modules/shangpinxinxi/list'
    import caigoubu from '@/views/modules/caigoubu/list'
    import shangpinruku from '@/views/modules/shangpinruku/list'
    import cangku from '@/views/modules/cangku/list'
    import kehuxinxi from '@/views/modules/kehuxinxi/list'
    import kucunpandian from '@/views/modules/kucunpandian/list'

//2.配置路由   注意：名字
const routes = [
    {
        path: '/index', name:'index', component: Index, children: [{
            // 这里不设置值，是把main作为默认页面
            path: '/',
            name: 'home',
            component: Home
        },{
            path: '/updatePassword',
            name: 'updatePassword',
            component: UpdatePassword
        } ,{
            path: '/pay',
            name: 'pay',
            component: pay
        } ,{
            path: '/center',
            name: 'center',
            component: center
        } 
                    ,{
                path: '/shangpinjinhuo',
                name: 'shangpinjinhuo',
                component: shangpinjinhuo
            } 
                    ,{
                path: '/xiaoshoubu',
                name: 'xiaoshoubu',
                component: xiaoshoubu
            } 
                    ,{
                path: '/gongyingshang',
                name: 'gongyingshang',
                component: gongyingshang
            } 
                    ,{
                path: '/xitonggonggao',
                name: 'xitonggonggao',
                component: xitonggonggao
            } 
                    ,{
                path: '/shangpinfenlei',
                name: 'shangpinfenlei',
                component: shangpinfenlei
            } 
                    ,{
                path: '/xiaoshoudingdan',
                name: 'xiaoshoudingdan',
                component: xiaoshoudingdan
            } 
                    ,{
                path: '/shangpinxinxi',
                name: 'shangpinxinxi',
                component: shangpinxinxi
            } 
                    ,{
                path: '/caigoubu',
                name: 'caigoubu',
                component: caigoubu
            } 
                    ,{
                path: '/shangpinruku',
                name: 'shangpinruku',
                component: shangpinruku
            } 
                    ,{
                path: '/cangku',
                name: 'cangku',
                component: cangku
            } 
                    ,{
                path: '/kehuxinxi',
                name: 'kehuxinxi',
                component: kehuxinxi
            } 
                    ,{
                path: '/kucunpandian',
                name: 'kucunpandian',
                component: kucunpandian
            } 
                ]
    },
    { path: '/adminexam', name: 'adminexam', component: adminexam },
    { path: '/login', name:'login', component: Login },
    { path: '/register', name:'register', component: register },
    { path: '/', redirect: '/index/' },      /*默认跳转路由*/
    { path: '*', component: NotFound }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
    mode: 'hash',   /*hash模式改为history*/
    routes // （缩写）相当于 routes: routes
})

export default router;

