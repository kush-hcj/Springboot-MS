<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
      <el-row>
                  <el-col :span="12">
        <el-form-item v-if="type!='info'" label="客户编号" prop="kehubianhao">
            <el-input v-model="ruleForm.kehubianhao" 
                placeholder="客户编号" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.kehubianhao" label="客户编号" prop="kehubianhao">
              <el-input v-model="ruleForm.kehubianhao" 
                placeholder="客户编号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="客户名称" prop="kehumingcheng">
          <el-input v-model="ruleForm.kehumingcheng" 
              placeholder="客户名称" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.kehumingcheng" label="客户名称" prop="kehumingcheng">
              <el-input v-model="ruleForm.kehumingcheng" 
                placeholder="客户名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="24">  
        <el-form-item v-if="type!='info'" label="图片" prop="tupian">
          <file-upload
          tip="点击上传图片"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.tupian?ruleForm.tupian:''"
          @change="tupianUploadChange"
          ></file-upload>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.tupian" label="图片" prop="tupian">
            <img style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.tupian.split(',')" :src="item" width="100" height="100">
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="type!='info'"  label="类别" prop="leibie">
          <el-select v-model="ruleForm.leibie" placeholder="请选择类别">
            <el-option
                v-for="(item,index) in leibieOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.leibie" label="类别" prop="leibie">
              <el-input v-model="ruleForm.leibie" 
                placeholder="类别" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="联系电话" prop="lianxidianhua">
          <el-input v-model="ruleForm.lianxidianhua" 
              placeholder="联系电话" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.lianxidianhua" label="联系电话" prop="lianxidianhua">
              <el-input v-model="ruleForm.lianxidianhua" 
                placeholder="联系电话" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="地址" prop="dizhi">
          <el-input v-model="ruleForm.dizhi" 
              placeholder="地址" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.dizhi" label="地址" prop="dizhi">
              <el-input v-model="ruleForm.dizhi" 
                placeholder="地址" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="邮箱" prop="youxiang">
          <el-input v-model="ruleForm.youxiang" 
              placeholder="邮箱" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.youxiang" label="邮箱" prop="youxiang">
              <el-input v-model="ruleForm.youxiang" 
                placeholder="邮箱" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        </el-row>
                                                                                                                                                                                                                      <el-form-item>
                <el-button v-if="type!='info'" type="primary" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
    
    
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    let self = this
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validatePhone = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isMobile(value)) {
        callback(new Error("请输入正确的电话号码"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
      id: '',
      type: '',
            ruleForm: {
                        kehubianhao: this.getUUID(),
                                kehumingcheng: '',
                                tupian: '',
                                leibie: '',
                                lianxidianhua: '',
                                dizhi: '',
                                youxiang: '',
                      },
                                                                  leibieOptions: [],
                                                              rules: {
                  kehubianhao: [
                                                                                              ],
                  kehumingcheng: [
                                                                                              ],
                  tupian: [
                                                                                              ],
                  leibie: [
                                                                                              ],
                  lianxidianhua: [
                                                                { validator: validatePhone, trigger: 'blur' },
                                                          ],
                  dizhi: [
                                                                                              ],
                  youxiang: [
                                                                            { validator: validateEmail, trigger: 'blur' },
                                              ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                                                          },
  methods: {
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
                    if(o=='kehubianhao'){
            this.ruleForm.kehubianhao = obj[o];
            continue;
          }
                    if(o=='kehumingcheng'){
            this.ruleForm.kehumingcheng = obj[o];
            continue;
          }
                    if(o=='tupian'){
            this.ruleForm.tupian = obj[o];
            continue;
          }
                    if(o=='leibie'){
            this.ruleForm.leibie = obj[o];
            continue;
          }
                    if(o=='lianxidianhua'){
            this.ruleForm.lianxidianhua = obj[o];
            continue;
          }
                    if(o=='dizhi'){
            this.ruleForm.dizhi = obj[o];
            continue;
          }
                    if(o=='youxiang'){
            this.ruleForm.youxiang = obj[o];
            continue;
          }
                  }
                                                                                                                              }
                                                                                                this.leibieOptions = "企业,个人".split(',')
                                                                                  },
                                                                // 多级联动参数
                                                                                  info(id) {
      this.$http({
        url: `kehuxinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.ruleForm = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
    },
        // 提交
    onSubmit() {
                  // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                                                  this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `kehuxinxi/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.kehuxinxiCrossAddOrUpdateFlag = false;
                  this.parent.search();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.kehuxinxiCrossAddOrUpdateFlag = false;
    },
                                                tupianUploadChange(fileUrls) {
                this.ruleForm.tupian = fileUrls;
            },
                                                              }
};
</script>
<style lang="scss">
.editor{
  height: 500px;
}
.amap-wrapper {
  width: 100%;
  height: 500px;
}
.search-box {
  position: absolute;
}
</style>
