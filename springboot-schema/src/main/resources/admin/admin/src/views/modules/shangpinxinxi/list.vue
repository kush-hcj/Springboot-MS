<template>
  <div class="main-content">
    <!-- 列表页 -->
    <div v-if="showFlag">
      <el-form :inline="true" :model="searchForm" class="form-content">
                                            <el-form-item label="商品编号">
                <el-input v-model="searchForm.shangpinbianhao" 
                    placeholder="商品编号" clearable></el-input>
              </el-form-item>
                                                                  <el-form-item label="名称">
                <el-input v-model="searchForm.mingcheng" 
                    placeholder="名称" clearable></el-input>
              </el-form-item>
                                                                  <el-form-item label="类别">
                <el-input v-model="searchForm.leibie" 
                    placeholder="类别" clearable></el-input>
              </el-form-item>
                                                                                                                                                                                      <el-form-item>
          <el-button round @click="search()">查询</el-button>
          <el-button
            v-if="isAuth('shangpinxinxi','新增')"
            type="primary"
            @click="addOrUpdateHandler()"
            round
          >新增</el-button>
          <el-button
            v-if="isAuth('shangpinxinxi','删除')"
            :disabled="dataListSelections.length <= 0"
            type="danger"
            @click="deleteHandler()"
            round
          >删除</el-button>
                    <el-button
            v-if="isAuth('shangpinxinxi','报表')"
            type="info"
            @click="chartDialog()"
            round
          >统计报表</el-button>
                  </el-form-item>
      </el-form>
      <div class="table-content">
        <el-table
            v-if="isAuth('shangpinxinxi','查看')"
            :data="dataList"
            border
            v-loading="dataListLoading"
            @selection-change="selectionChangeHandler"
            style="width: 100%;">
            <el-table-column
                type="selection"
                header-align="center"
                align="center"
                width="50">
            </el-table-column>
                                            <el-table-column
                    prop="shangpinbianhao"
                    header-align="center"
                    align="center"
                    sortable
                    label="商品编号">
                    <template slot-scope="scope">
                      {{scope.row.shangpinbianhao}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="mingcheng"
                    header-align="center"
                    align="center"
                    sortable
                    label="名称">
                    <template slot-scope="scope">
                      {{scope.row.mingcheng}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="leibie"
                    header-align="center"
                    align="center"
                    sortable
                    label="类别">
                    <template slot-scope="scope">
                      {{scope.row.leibie}}
                    </template>
                </el-table-column>
                                                              <el-table-column prop="tupian" 
                    header-align="center"
                    align="center" 
                    width="200" 
                    label="图片">
                    <template slot-scope="scope">
                      <div v-if="scope.row.tupian">
                        <img :src="scope.row.tupian.split(',')[0]" width="100" height="100">
                      </div>
                      <div v-else>无图片</div>
                    </template>
                  </el-table-column>
                                                            <el-table-column
                    prop="guige"
                    header-align="center"
                    align="center"
                    sortable
                    label="规格">
                    <template slot-scope="scope">
                      {{scope.row.guige}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="pinpai"
                    header-align="center"
                    align="center"
                    sortable
                    label="品牌">
                    <template slot-scope="scope">
                      {{scope.row.pinpai}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="gongyingshang"
                    header-align="center"
                    align="center"
                    sortable
                    label="供应商">
                    <template slot-scope="scope">
                      {{scope.row.gongyingshang}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="shuliang"
                    header-align="center"
                    align="center"
                    sortable
                    label="数量">
                    <template slot-scope="scope">
                      {{scope.row.shuliang}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="jinjia"
                    header-align="center"
                    align="center"
                    sortable
                    label="进价">
                    <template slot-scope="scope">
                      {{scope.row.jinjia}}
                    </template>
                </el-table-column>
                                                            <el-table-column
                    prop="shoujia"
                    header-align="center"
                    align="center"
                    sortable
                    label="售价">
                    <template slot-scope="scope">
                      {{scope.row.shoujia}}
                    </template>
                </el-table-column>
                                                                                                <el-table-column
                header-align="center"
                align="center"
                label="操作">
                <template slot-scope="scope">
                                <el-button v-if="isAuth('shangpinxinxi','查看')" type="text" icon="el-icon-edit" size="small" @click="addOrUpdateHandler(scope.row.id,'info')">详情</el-button>
                                                                <el-button v-if="isAuth('shangpinxinxi','盘点')" type="text" icon="el-icon-edit" size="small" @click="kucunpandianCrossAddOrUpdateHandler(scope.row,'cross')">盘点</el-button>
                                                <el-button v-if="isAuth('shangpinxinxi','进货')" type="text" icon="el-icon-edit" size="small" @click="shangpinjinhuoCrossAddOrUpdateHandler(scope.row,'cross')">进货</el-button>
                                                <el-button v-if="isAuth('shangpinxinxi','销售单')" type="text" icon="el-icon-edit" size="small" @click="xiaoshoudingdanCrossAddOrUpdateHandler(scope.row,'cross')">销售单</el-button>
                                                <el-button v-if="isAuth('shangpinxinxi','入库')" type="text" icon="el-icon-edit" size="small" @click="shangpinrukuCrossAddOrUpdateHandler(scope.row,'cross')">入库</el-button>
                                                                <el-button v-if="isAuth('shangpinxinxi','修改')" type="text" icon="el-icon-edit" size="small" @click="addOrUpdateHandler(scope.row.id)">修改</el-button>
                <el-button v-if="isAuth('shangpinxinxi','删除')" type="text" icon="el-icon-delete" size="small" @click="deleteHandler(scope.row.id)">删除</el-button>
                </template>
            </el-table-column>
        </el-table>
                                                                                                                                                                                                <el-pagination
          @size-change="sizeChangeHandle"
          @current-change="currentChangeHandle"
          :current-page="pageIndex"
          :page-sizes="[10, 20, 50, 100]"
          :page-size="pageSize"
          :total="totalPage"
          layout="total, sizes, prev, pager, next, jumper"
          class="pagination-content"
        ></el-pagination>
      </div>
    </div>
    <!-- 添加/修改页面  将父组件的search方法传递给子组件-->
    <add-or-update v-if="addOrUpdateFlag" :parent="this" ref="addOrUpdate"></add-or-update>

            <kucunpandian-cross-add-or-update v-if="kucunpandianCrossAddOrUpdateFlag" :parent="this" ref="kucunpandianCrossaddOrUpdate"></kucunpandian-cross-add-or-update>
        <shangpinjinhuo-cross-add-or-update v-if="shangpinjinhuoCrossAddOrUpdateFlag" :parent="this" ref="shangpinjinhuoCrossaddOrUpdate"></shangpinjinhuo-cross-add-or-update>
        <xiaoshoudingdan-cross-add-or-update v-if="xiaoshoudingdanCrossAddOrUpdateFlag" :parent="this" ref="xiaoshoudingdanCrossaddOrUpdate"></xiaoshoudingdan-cross-add-or-update>
        <shangpinruku-cross-add-or-update v-if="shangpinrukuCrossAddOrUpdateFlag" :parent="this" ref="shangpinrukuCrossaddOrUpdate"></shangpinruku-cross-add-or-update>
        
    
        <el-dialog
      title="统计报表"
      :visible.sync="chartVisiable"
      width="800">  
                                                                                                                        <div id="shuliangChart" style="width:100%;height:600px;"></div>
                                                              <span slot="footer" class="dialog-footer">
        <el-button @click="chartDialog">返回</el-button>
      </span>
    </el-dialog>
      </div>
</template>
<script>
import AddOrUpdate from "./add-or-update";
import kucunpandianCrossAddOrUpdate from "../kucunpandian/add-or-update";
import shangpinjinhuoCrossAddOrUpdate from "../shangpinjinhuo/add-or-update";
import xiaoshoudingdanCrossAddOrUpdate from "../xiaoshoudingdan/add-or-update";
import shangpinrukuCrossAddOrUpdate from "../shangpinruku/add-or-update";
export default {
  data() {
    return {
                                                                                          leibieOptions: [],
                                                                                                                                                                        searchForm: {
        key: ""
      },
      dataList: [],
      pageIndex: 1,
      pageSize: 10,
      totalPage: 0,
      dataListLoading: false,
      dataListSelections: [],
      showFlag: true,
      sfshVisiable: false,
      shForm: {},
      chartVisiable: false,
      addOrUpdateFlag:false,
                  kucunpandianCrossAddOrUpdateFlag: false,
            shangpinjinhuoCrossAddOrUpdateFlag: false,
            xiaoshoudingdanCrossAddOrUpdateFlag: false,
            shangpinrukuCrossAddOrUpdateFlag: false,
                };
  },
  mounted() {
    this.init();
    this.getDataList();
  },
  filters: {
    htmlfilter: function (val) {
      return val.replace(/<[^>]*>/g).replace(/undefined/g,'');
    }
  },
  components: {
    AddOrUpdate,
            kucunpandianCrossAddOrUpdate,
        shangpinjinhuoCrossAddOrUpdate,
        xiaoshoudingdanCrossAddOrUpdate,
        shangpinrukuCrossAddOrUpdate,
          },
  methods: {
            kucunpandianCrossAddOrUpdateHandler(row,type){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.kucunpandianCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','shangpinxinxi');
      this.$nextTick(() => {
        this.$refs.kucunpandianCrossaddOrUpdate.init(row.id,type);
      });
    },
        shangpinjinhuoCrossAddOrUpdateHandler(row,type){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.shangpinjinhuoCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','shangpinxinxi');
      this.$nextTick(() => {
        this.$refs.shangpinjinhuoCrossaddOrUpdate.init(row.id,type);
      });
    },
        xiaoshoudingdanCrossAddOrUpdateHandler(row,type){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.xiaoshoudingdanCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','shangpinxinxi');
      this.$nextTick(() => {
        this.$refs.xiaoshoudingdanCrossaddOrUpdate.init(row.id,type);
      });
    },
        shangpinrukuCrossAddOrUpdateHandler(row,type){
      this.showFlag = false;
      this.addOrUpdateFlag = false;
      this.shangpinrukuCrossAddOrUpdateFlag = true;
      this.$storage.set('crossObj',row);
      this.$storage.set('crossTable','shangpinxinxi');
      this.$nextTick(() => {
        this.$refs.shangpinrukuCrossaddOrUpdate.init(row.id,type);
      });
    },
                    chartDialog() {
      this.chartVisiable = !this.chartVisiable;
      this.$nextTick(()=>{
                                                         // mingcheng mingcheng
                                                                                                                                                                      //  shuliang
                                                                                                                    // xcolumn ycolumn mingcheng shuliang
                var shuliangChart = this.$echarts.init(document.getElementById("shuliangChart"),'macarons');
        this.$http({
            url: `value/shangpinxinxi/mingcheng/shuliang`,
            method: "get"
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].mingcheng);
                    yAxis.push(res[i].total);
                    pArray.push({
                    value: res[i].total,
                    name: res[i].mingcheng
                    })
                    var option = {};
                                        option = {
                        tooltip: {
                          trigger: 'item',
                          formatter: '{b} : {c}'
                        },
                        title: {
                            text: '商品信息',
                            left: 'center'
                        },
                        xAxis: {
                            type: 'category',
                            data: xAxis
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [{
                            data: yAxis,
                            type: 'bar'
                        }]
                    };
                                        // 使用刚指定的配置项和数据显示图表。
                    shuliangChart.setOption(option);
                    //根据窗口的大小变动图表
                    window.onresize = function() {
                        shuliangChart.resize();
                    };
                }
            }
        });
              })
    },
        init () {
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
                                                                                                                                                                                                                                              let urlshuliang = 'shangpinxinxi/remind/shuliang/1?1=1';
                      urlshuliang+=`&remindend=100`,
                              this.$http({
            url: urlshuliang,
            method: "get",
          }).then(({ data }) => {
            if (data && data.code == 0 && data.count>0 ) {
              this.$alert(`数量有${data.count}条记录到达预警`)
            }
          });
                                                            },
    search() {
      this.pageIndex = 1;
      this.getDataList();
    },
    // 获取数据列表
    getDataList() {
      this.dataListLoading = true;
      let params = {
        page: this.pageIndex,
        limit: this.pageSize,
        sort: 'id',
      }
                                          if(this.searchForm.shangpinbianhao!='' && this.searchForm.shangpinbianhao!=undefined){
            params['shangpinbianhao'] = '%' + this.searchForm.shangpinbianhao + '%'
          }
                                                            if(this.searchForm.mingcheng!='' && this.searchForm.mingcheng!=undefined){
            params['mingcheng'] = '%' + this.searchForm.mingcheng + '%'
          }
                                                            if(this.searchForm.leibie!='' && this.searchForm.leibie!=undefined){
            params['leibie'] = '%' + this.searchForm.leibie + '%'
          }
                                                                                                                                                                                                              this.$http({
        url: "shangpinxinxi/page",
        method: "get",
        params: params
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.dataList = data.data.list;
          this.totalPage = data.data.total;
        } else {
          this.dataList = [];
          this.totalPage = 0;
        }
        this.dataListLoading = false;
      });
    },
    // 每页数
    sizeChangeHandle(val) {
      this.pageSize = val;
      this.pageIndex = 1;
      this.getDataList();
    },
    // 当前页
    currentChangeHandle(val) {
      this.pageIndex = val;
      this.getDataList();
    },
    // 多选
    selectionChangeHandler(val) {
      this.dataListSelections = val;
    },
    // 添加/修改
    addOrUpdateHandler(id,type) {
      this.showFlag = false;
      this.addOrUpdateFlag = true;
      this.crossAddOrUpdateFlag = false;
      if(type!='info'){
        type = 'else';
      }
      this.$nextTick(() => {
        this.$refs.addOrUpdate.init(id,type);
      });
    },
        // 下载
    download(file){
      window.open(`${file}`)
    },
    // 删除
    deleteHandler(id) {
      var ids = id
        ? [Number(id)]
        : this.dataListSelections.map(item => {
            return Number(item.id);
          });
      this.$confirm(`确定进行[${id ? "删除" : "批量删除"}]操作?`, "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.$http({
          url: "shangpinxinxi/delete",
          method: "post",
          data: ids
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message({
              message: "操作成功",
              type: "success",
              duration: 1500,
              onClose: () => {
                this.search();
              }
            });
          } else {
            this.$message.error(data.msg);
          }
        });
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
