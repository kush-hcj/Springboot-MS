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
        <el-form-item v-if="type!='info'" label="商品编号" prop="shangpinbianhao">
            <el-input v-model="ruleForm.shangpinbianhao" 
                placeholder="商品编号" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shangpinbianhao" label="商品编号" prop="shangpinbianhao">
              <el-input v-model="ruleForm.shangpinbianhao" 
                placeholder="商品编号" readonly></el-input>
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
        <el-form-item  v-if="type!='info'"  label="规格" prop="guige">
          <el-input v-model="ruleForm.guige" 
              placeholder="规格" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.guige" label="规格" prop="guige">
              <el-input v-model="ruleForm.guige" 
                placeholder="规格" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="品牌" prop="pinpai">
          <el-input v-model="ruleForm.pinpai" 
              placeholder="品牌" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.pinpai" label="品牌" prop="pinpai">
              <el-input v-model="ruleForm.pinpai" 
                placeholder="品牌" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="type!='info'"  label="供应商" prop="gongyingshang">
          <el-select v-model="ruleForm.gongyingshang" placeholder="请选择供应商">
            <el-option
                v-for="(item,index) in gongyingshangOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
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
        <el-form-item  v-if="type!='info'"  label="进价" prop="jinjia">
          <el-input v-model="ruleForm.jinjia" 
              placeholder="进价" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.jinjia" label="进价" prop="jinjia">
              <el-input v-model="ruleForm.jinjia" 
                placeholder="进价" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="售价" prop="shoujia">
          <el-input v-model="ruleForm.shoujia" 
              placeholder="售价" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.shoujia" label="售价" prop="shoujia">
              <el-input v-model="ruleForm.shoujia" 
                placeholder="售价" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                                          </el-row>
                                                                                                                                                                                                                                                                                                                                    <el-row>
            <el-col :span="24">
              <el-form-item v-if="type!='info'"  label="商品介绍" prop="shangpinjieshao">
                <editor 
                    style="min-width: 200px; max-width: 600px;"
                    v-model="ruleForm.shangpinjieshao" 
                    class="editor" 
                    action="file/upload">
                </editor>
              </el-form-item>
              <div v-else>
                <el-form-item v-if="ruleForm.shangpinjieshao" label="商品介绍" prop="shangpinjieshao">
                    <span v-html="ruleForm.shangpinjieshao"></span>
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
                        shangpinbianhao: this.getUUID(),
                                mingcheng: '',
                                leibie: '',
                                tupian: '',
                                guige: '',
                                pinpai: '',
                                gongyingshang: '',
                                shuliang: '',
                                jinjia: '',
                                shoujia: '',
                                shangpinjieshao: '',
                      },
                                                    leibieOptions: [],
                                                                          gongyingshangOptions: [],
                                                                            rules: {
                  shangpinbianhao: [
                                                                                              ],
                  mingcheng: [
                                                                                              ],
                  leibie: [
                                                                                              ],
                  tupian: [
                                                                                              ],
                  guige: [
                                                                                              ],
                  pinpai: [
                                                                                              ],
                  gongyingshang: [
                                                                                              ],
                  shuliang: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  jinjia: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  shoujia: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  shangpinjieshao: [
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
                    if(o=='shangpinbianhao'){
            this.ruleForm.shangpinbianhao = obj[o];
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
                    if(o=='guige'){
            this.ruleForm.guige = obj[o];
            continue;
          }
                    if(o=='pinpai'){
            this.ruleForm.pinpai = obj[o];
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
                    if(o=='jinjia'){
            this.ruleForm.jinjia = obj[o];
            continue;
          }
                    if(o=='shoujia'){
            this.ruleForm.shoujia = obj[o];
            continue;
          }
                    if(o=='shangpinjieshao'){
            this.ruleForm.shangpinjieshao = obj[o];
            continue;
          }
                  }
                                                                                                                                                                                              }
                                                                              this.$http({
              url: `option/shangpinfenlei/leibie`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.leibieOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
                                                                                              this.$http({
              url: `option/gongyingshang/gongyingshang`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.gongyingshangOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
         
                                                                                                    },
                                                                                                // 多级联动参数
                                                                                                                          info(id) {
      this.$http({
        url: `shangpinxinxi/info/${id}`,
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
                                                                                                                                                                                                                                          this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `shangpinxinxi/${!this.ruleForm.id ? "save" : "update"}`,
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
                  this.parent.shangpinxinxiCrossAddOrUpdateFlag = false;
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
      this.parent.shangpinxinxiCrossAddOrUpdateFlag = false;
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
