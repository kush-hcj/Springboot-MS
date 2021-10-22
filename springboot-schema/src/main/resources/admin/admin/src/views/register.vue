<template>
  <div>
    <img class="bg" src="@/assets/img/bg.jpg">
    <el-form :model="ruleForm" :rules="rules" ref="ruleForm" class="login-form">
      <h1 class="h1">进销存管理系统注册</h1>
                              <el-form-item v-if="tableName=='xiaoshoubu'" label="工号" prop="xiaoshoubugonghao">
        <el-input v-model="ruleForm.gonghao" placeholder="工号"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='xiaoshoubu'" label="密码" prop="xiaoshoubumima">
        <el-input v-model="ruleForm.mima" placeholder="密码"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='xiaoshoubu'" label="员工姓名" prop="xiaoshoubuyuangongxingming">
        <el-input v-model="ruleForm.yuangongxingming" placeholder="员工姓名"></el-input>
      </el-form-item>
                                                            <el-form-item v-if="tableName=='xiaoshoubu'" label="手机" prop="xiaoshoubushouji">
        <el-input v-model="ruleForm.shouji" placeholder="手机"></el-input>
      </el-form-item>
                                                <el-form-item v-if="tableName=='cangku'" label="账号" prop="cangkuzhanghao">
        <el-input v-model="ruleForm.zhanghao" placeholder="账号"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='cangku'" label="密码" prop="cangkumima">
        <el-input v-model="ruleForm.mima" placeholder="密码"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='cangku'" label="姓名" prop="cangkuxingming">
        <el-input v-model="ruleForm.xingming" placeholder="姓名"></el-input>
      </el-form-item>
                                                            <el-form-item v-if="tableName=='cangku'" label="手机" prop="cangkushouji">
        <el-input v-model="ruleForm.shouji" placeholder="手机"></el-input>
      </el-form-item>
                                                <el-form-item v-if="tableName=='caigoubu'" label="用户名" prop="caigoubuyonghuming">
        <el-input v-model="ruleForm.yonghuming" placeholder="用户名"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='caigoubu'" label="密码" prop="caigoubumima">
        <el-input v-model="ruleForm.mima" placeholder="密码"></el-input>
      </el-form-item>
                        <el-form-item v-if="tableName=='caigoubu'" label="姓名" prop="caigoubuxingming">
        <el-input v-model="ruleForm.xingming" placeholder="姓名"></el-input>
      </el-form-item>
                                                            <el-form-item v-if="tableName=='caigoubu'" label="手机" prop="caigoubushouji">
        <el-input v-model="ruleForm.shouji" placeholder="手机"></el-input>
      </el-form-item>
                                                                                                                                          <el-button @click="login()" class="btn-login" type="primary">注册</el-button>
    </el-form>
  </div>
</template>
<script>
export default {
  data() {
    return {
      ruleForm: {
              },
      tableName:"",
      rules: {}
    };
  },
  mounted(){
    let table = this.$storage.get("loginTable");
    this.tableName = table;
  },
  methods: {
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 注册
    login() {
                              if((!this.ruleForm.gonghao) && `xiaoshoubu` == this.tableName){
        this.$message.error(`工号不能为空`);
        return
      }
                                                            if((!this.ruleForm.mima) && `xiaoshoubu` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                            if((!this.ruleForm.yuangongxingming) && `xiaoshoubu` == this.tableName){
        this.$message.error(`员工姓名不能为空`);
        return
      }
                                                                                                                                                                              if(`xiaoshoubu` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入电话格式`);
        return
      }
                                                                  if((!this.ruleForm.zhanghao) && `cangku` == this.tableName){
        this.$message.error(`账号不能为空`);
        return
      }
                                                            if((!this.ruleForm.mima) && `cangku` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                                                                                                                                                                                              if(`cangku` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入电话格式`);
        return
      }
                                                                  if((!this.ruleForm.yonghuming) && `caigoubu` == this.tableName){
        this.$message.error(`用户名不能为空`);
        return
      }
                                                            if((!this.ruleForm.mima) && `caigoubu` == this.tableName){
        this.$message.error(`密码不能为空`);
        return
      }
                                                            if((!this.ruleForm.xingming) && `caigoubu` == this.tableName){
        this.$message.error(`姓名不能为空`);
        return
      }
                                                                                                                                                                              if(`caigoubu` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
        this.$message.error(`手机应输入电话格式`);
        return
      }
                                                                                                                                                            this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `${this.tableName}/register`,
            method: "post",
            data:this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$router.replace({ path: "/login" });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
