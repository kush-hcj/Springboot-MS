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
        <el-form-item v-if="type!='info'" label="入库单号" prop="rukudanhao">
            <el-input v-model="ruleForm.rukudanhao" 
                placeholder="入库单号" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.rukudanhao" label="入库单号" prop="rukudanhao">
              <el-input v-model="ruleForm.rukudanhao" 
                placeholder="入库单号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="名称" prop="mingcheng">
          <el-input v-model="ruleForm.mingcheng" 
              placeholder="名称" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.mingcheng" label="名称" prop="mingcheng">
              <el-input v-model="ruleForm.mingcheng" 
                placeholder="名称" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="类别" prop="leibie">
          <el-input v-model="ruleForm.leibie" 
              placeholder="类别" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.leibie" label="类别" prop="leibie">
              <el-input v-model="ruleForm.leibie" 
                placeholder="类别" readonly></el-input>
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
        <el-form-item  v-if="type!='info'"  label="供应商" prop="gongyingshang">
          <el-input v-model="ruleForm.gongyingshang" 
              placeholder="供应商" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.gongyingshang" label="供应商" prop="gongyingshang">
              <el-input v-model="ruleForm.gongyingshang" 
                placeholder="供应商" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="数量" prop="shuliang">
          <el-input v-model="ruleForm.shuliang" 
              placeholder="数量" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shuliang" label="数量" prop="shuliang">
              <el-input v-model="ruleForm.shuliang" 
                placeholder="数量" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="入库日期" prop="rukuriqi">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.rukuriqi" 
                type="date"
                placeholder="入库日期">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.rukuriqi" label="入库日期" prop="rukuriqi">
              <el-input v-model="ruleForm.rukuriqi" 
                placeholder="入库日期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="账号" prop="zhanghao">
          <el-input v-model="ruleForm.zhanghao" 
              placeholder="账号" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zhanghao" label="账号" prop="zhanghao">
              <el-input v-model="ruleForm.zhanghao" 
                placeholder="账号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="姓名" prop="xingming">
          <el-input v-model="ruleForm.xingming" 
              placeholder="姓名" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.xingming" label="姓名" prop="xingming">
              <el-input v-model="ruleForm.xingming" 
                placeholder="姓名" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="手机" prop="shouji">
          <el-input v-model="ruleForm.shouji" 
              placeholder="手机" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shouji" label="手机" prop="shouji">
              <el-input v-model="ruleForm.shouji" 
                placeholder="手机" readonly></el-input>
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
                        rukudanhao: this.getUUID(),
                                mingcheng: '',
                                leibie: '',
                                tupian: '',
                                gongyingshang: '',
                                shuliang: '',
                                rukuriqi: '',
                                zhanghao: '',
                                xingming: '',
                                shouji: '',
                                sfsh: '',
                                shhf: '',
                      },
                                                                                                                                                                                    rules: {
                  rukudanhao: [
                                                                                              ],
                  mingcheng: [
                                                                                              ],
                  leibie: [
                                                                                              ],
                  tupian: [
                                                                                              ],
                  gongyingshang: [
                                                                                              ],
                  shuliang: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  rukuriqi: [
                                                                                              ],
                  zhanghao: [
                                                                                              ],
                  xingming: [
                                                                                              ],
                  shouji: [
                                                                                              ],
                  sfsh: [
                                                                                              ],
                  shhf: [
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
                    if(o=='rukudanhao'){
            this.ruleForm.rukudanhao = obj[o];
            continue;
          }
                    if(o=='mingcheng'){
            this.ruleForm.mingcheng = obj[o];
            continue;
          }
                    if(o=='leibie'){
            this.ruleForm.leibie = obj[o];
            continue;
          }
                    if(o=='tupian'){
            this.ruleForm.tupian = obj[o];
            continue;
          }
                    if(o=='gongyingshang'){
            this.ruleForm.gongyingshang = obj[o];
            continue;
          }
                    if(o=='shuliang'){
            this.ruleForm.shuliang = obj[o];
            continue;
          }
                    if(o=='rukuriqi'){
            this.ruleForm.rukuriqi = obj[o];
            continue;
          }
                    if(o=='zhanghao'){
            this.ruleForm.zhanghao = obj[o];
            continue;
          }
                    if(o=='xingming'){
            this.ruleForm.xingming = obj[o];
            continue;
          }
                    if(o=='shouji'){
            this.ruleForm.shouji = obj[o];
            continue;
          }
                    if(o=='sfsh'){
            this.ruleForm.sfsh = obj[o];
            continue;
          }
                    if(o=='shhf'){
            this.ruleForm.shhf = obj[o];
            continue;
          }
                  }
                                                                                                        this.ruleForm.shuliang = 0
                                                                                                                      }
            // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
                                                                                                                                                                                              this.ruleForm.zhanghao = json.zhanghao
                                                this.ruleForm.xingming = json.xingming
                                                this.ruleForm.shouji = json.shouji
                                                                          } else {
          this.$message.error(data.msg);
        }
      });
                                                                                                                                                                                                                                                      },
                                                                                                        // 多级联动参数
                                                                                                                                    info(id) {
      this.$http({
        url: `shangpinruku/info/${id}`,
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
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                              // ${column.compare}
                                                                                                                                          var obj = this.$storage.getObj('crossObj');
      var table = this.$storage.getObj('crossTable');
      obj.shuliang = parseFloat(obj.shuliang) + parseFloat(this.ruleForm.shuliang)
      this.$http({
          url: `${table}/update`,
          method: "post",
          data: obj
        }).then(({ data }) => {});
                                                                                                                              this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `shangpinruku/${!this.ruleForm.id ? "save" : "update"}`,
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
                  this.parent.shangpinrukuCrossAddOrUpdateFlag = false;
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
      this.parent.shangpinrukuCrossAddOrUpdateFlag = false;
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
