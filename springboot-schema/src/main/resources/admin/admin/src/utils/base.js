const base = {
    get() {
                return {
            url : "http://localhost:8080/springbooty8bjb/",
            name: "springbooty8bjb",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbooty8bjb/front/index.html'
        }
            },
    getProjectName(){
        return {
            projectName: "进销存管理系统"
        } 
    }
}
export default base