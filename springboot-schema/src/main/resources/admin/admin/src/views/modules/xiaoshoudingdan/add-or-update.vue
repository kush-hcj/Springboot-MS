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
        <el-form-item v-if="type!='info'" label="订单编号" prop="dingdanbianhao">
            <el-input v-model="ruleForm.dingdanbianhao" 
                placeholder="订单编号" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.dingdanbianhao" label="订单编号" prop="dingdanbianhao">
              <el-input v-model="ruleForm.dingdanbianhao" 
                placeholder="订单编号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="商品编号" prop="shangpinbianhao">
          <el-input v-model="ruleForm.shangpinbianhao" 
              placeholder="商品编号" clearable></el-input>
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
                        <el-col :span="12">
        <el-form-item v-if="type!='info'"  label="总价格" prop="zongjiage">
            <el-input v-model="zongjiage"
                placeholder="总价格" readonly></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zongjiage" label="总价格" prop="zongjiage">
              <el-input v-model="ruleForm.zongjiage" 
                placeholder="总价格" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'" label="订单日期" prop="dingdanriqi">
            <el-date-picker
                format="yyyy 年 MM 月 dd 日"
                value-format="yyyy-MM-dd"
                v-model="ruleForm.dingdanriqi" 
                type="date"
                placeholder="订单日期">
            </el-date-picker> 
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.dingdanriqi" label="订单日期" prop="dingdanriqi">
              <el-input v-model="ruleForm.dingdanriqi" 
                placeholder="订单日期" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item v-if="type!='info'" label="客户名称" prop="kehumingcheng">
          <el-select  @change="kehumingchengChange" v-model="ruleForm.kehumingcheng" placeholder="请选择客户名称">
            <el-option
                v-for="(item,index) in kehumingchengOptions"
                v-bind:key="index"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.kehumingcheng" label="客户名称" prop="kehumingcheng">
              <el-input v-model="ruleForm.kehumingcheng" 
                placeholder="客户名称" readonly></el-input>
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
        <el-form-item  v-if="type!='info'"  label="备注" prop="beizhu">
          <el-input v-model="ruleForm.beizhu" 
              placeholder="备注" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.beizhu" label="备注" prop="beizhu">
              <el-input v-model="ruleForm.beizhu" 
                placeholder="备注" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="工号" prop="gonghao">
          <el-input v-model="ruleForm.gonghao" 
              placeholder="工号" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.gonghao" label="工号" prop="gonghao">
              <el-input v-model="ruleForm.gonghao" 
                placeholder="工号" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="员工姓名" prop="yuangongxingming">
          <el-input v-model="ruleForm.yuangongxingming" 
              placeholder="员工姓名" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.yuangongxingming" label="员工姓名" prop="yuangongxingming">
              <el-input v-model="ruleForm.yuangongxingming" 
                placeholder="员工姓名" readonly></el-input>
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
                        dingdanbianhao: this.getUUID(),
                                shangpinbianhao: '',
                                mingcheng: '',
                                leibie: '',
                                tupian: '',
                                shuliang: '',
                                shoujia: '',
                                zongjiage: '',
                                dingdanriqi: '',
                                kehumingcheng: '',
                                dizhi: '',
                                lianxidianhua: '',
                                beizhu: '',
                                gonghao: '',
                                yuangongxingming: '',
                                shouji: '',
                                sfsh: '',
                                shhf: '',
                      },
                                                                                                                                                      kehumingchengOptions: [],
                                                                                                                                    rules: {
                  dingdanbianhao: [
                                                                                              ],
                  shangpinbianhao: [
                                                                                              ],
                  mingcheng: [
                                                                                              ],
                  leibie: [
                                                                                              ],
                  tupian: [
                                                                                              ],
                  shuliang: [
                                        { validator: validateIntNumber, trigger: 'blur' },
                                                                                  ],
                  shoujia: [
                                                                                              ],
                  zongjiage: [
                                                                                              ],
                  dingdanriqi: [
                                                                                              ],
                  kehumingcheng: [
                                                                                              ],
                  dizhi: [
                                                                                              ],
                  lianxidianhua: [
                                                                                              ],
                  beizhu: [
                                                                                              ],
                  gonghao: [
                                                                                              ],
                  yuangongxingming: [
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
                                                                                                zongjiage:{
                                                                                                                                                                                                                                                                                        get: function () {
        return 1*this.ruleForm.shuliang*this.ruleForm.shoujia
      }
    },
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
                    if(o=='dingdanbianhao'){
            this.ruleForm.dingdanbianhao = obj[o];
            continue;
          }
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
                    if(o=='shuliang'){
            this.ruleForm.shuliang = obj[o];
            continue;
          }
                    if(o=='shoujia'){
            this.ruleForm.shoujia = obj[o];
            continue;
          }
                    if(o=='zongjiage'){
            this.ruleForm.zongjiage = obj[o];
            continue;
          }
                    if(o=='dingdanriqi'){
            this.ruleForm.dingdanriqi = obj[o];
            continue;
          }
                    if(o=='kehumingcheng'){
            this.ruleForm.kehumingcheng = obj[o];
            continue;
          }
                    if(o=='dizhi'){
            this.ruleForm.dizhi = obj[o];
            continue;
          }
                    if(o=='lianxidianhua'){
            this.ruleForm.lianxidianhua = obj[o];
            continue;
          }
                    if(o=='beizhu'){
            this.ruleForm.beizhu = obj[o];
            continue;
          }
                    if(o=='gonghao'){
            this.ruleForm.gonghao = obj[o];
            continue;
          }
                    if(o=='yuangongxingming'){
            this.ruleForm.yuangongxingming = obj[o];
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
                                                                                                                                                                                                                                                                                                                                  this.ruleForm.gonghao = json.gonghao
                                                this.ruleForm.yuangongxingming = json.yuangongxingming
                                                this.ruleForm.shouji = json.shouji
                                                                          } else {
          this.$message.error(data.msg);
        }
      });
                                                                                                                                                                                                            this.$http({
              url: `option/kehuxinxi/kehumingcheng`,
              method: "get"
            }).then(({ data }) => {
              if (data && data.code === 0) {
                this.kehumingchengOptions = data.data;
              } else {
                this.$message.error(data.msg);
              }
            });
                                                                                                                                                                            },
                                                                                    // 下二随
    kehumingchengChange () {
      this.$http({
        url: `follow/kehuxinxi/kehumingcheng?columnValue=`+ this.ruleForm.kehumingcheng,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
                                                                                                                                                                                                                                                                if(data.data.dizhi){
                this.ruleForm.dizhi = data.data.dizhi
              }
                                                if(data.data.lianxidianhua){
                this.ruleForm.lianxidianhua = data.data.lianxidianhua
              }
                                                                                                                                                                  } else {
          this.$message.error(data.msg);
        }
      });
    },
                                                                            // 多级联动参数
                                                                                                                                                                                                info(id) {
      this.$http({
        url: `xiaoshoudingdan/info/${id}`,
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
              this.ruleForm.zongjiage = this.zongjiage
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
      obj.shuliang = obj.shuliang - this.ruleForm.shuliang
      if(obj.shuliang<0){
        this.$message.error("数量不足");
        return
      }
      this.$http({
          url: `${table}/update`,
          method: "post",
          data: obj
        }).then(({ data }) => {});
                                                                                                                                                                                                                                          this.$refs["ruleForm"].validate(valid => {
        if (valid) {
          this.$http({
            url: `xiaoshoudingdan/${!this.ruleForm.id ? "save" : "update"}`,
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
                  this.parent.xiaoshoudingdanCrossAddOrUpdateFlag = false;
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
      this.parent.xiaoshoudingdanCrossAddOrUpdateFlag = false;
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
