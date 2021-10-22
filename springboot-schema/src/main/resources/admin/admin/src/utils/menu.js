const menu = {
	list() {
		return [{
			"backMenu": [{
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "销售部列表",
					"menuJump": "列表",
					"tableName": "xiaoshoubu"
				}],
				"menu": "销售部管理"
			}, {
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "仓库列表",
					"menuJump": "列表",
					"tableName": "cangku"
				}],
				"menu": "仓库管理"
			}, {
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "采购部列表",
					"menuJump": "列表",
					"tableName": "caigoubu"
				}],
				"menu": "采购部管理"
			}, {
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "商品分类列表",
					"menuJump": "列表",
					"tableName": "shangpinfenlei"
				}],
				"menu": "商品分类管理"
			}, {
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "供应商列表",
					"menuJump": "列表",
					"tableName": "gongyingshang"
				}],
				"menu": "供应商管理"
			}, {
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "客户信息列表",
					"menuJump": "列表",
					"tableName": "kehuxinxi"
				}],
				"menu": "客户信息管理"
			}, {
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "系统公告列表",
					"menuJump": "列表",
					"tableName": "xitonggonggao"
				}],
				"menu": "系统公告管理"
			}, {
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除", "报表"],
					"menu": "商品信息列表",
					"menuJump": "列表",
					"tableName": "shangpinxinxi"
				}],
				"menu": "商品信息管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除", "审核"],
					"menu": "库存盘点列表",
					"menuJump": "列表",
					"tableName": "kucunpandian"
				}],
				"menu": "库存盘点管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除", "审核", "支付", "报表"],
					"menu": "商品进货列表",
					"menuJump": "列表",
					"tableName": "shangpinjinhuo"
				}],
				"menu": "商品进货管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除", "审核", "报表"],
					"menu": "销售订单列表",
					"menuJump": "列表",
					"tableName": "xiaoshoudingdan"
				}],
				"menu": "销售订单管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除", "审核"],
					"menu": "商品入库列表",
					"menuJump": "列表",
					"tableName": "shangpinruku"
				}],
				"menu": "商品入库管理"
			}],
			"frontMenu": [],
			"roleName": "管理员",
			"tableName": "users"
		}, {
			"backMenu": [{
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "客户信息列表",
					"menuJump": "列表",
					"tableName": "kehuxinxi"
				}],
				"menu": "客户信息管理"
			}, {
				"child": [{
					"buttons": ["查看", "报表", "销售单"],
					"menu": "商品信息列表",
					"menuJump": "列表",
					"tableName": "shangpinxinxi"
				}],
				"menu": "商品信息管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除", "报表"],
					"menu": "销售订单列表",
					"menuJump": "列表",
					"tableName": "xiaoshoudingdan"
				}],
				"menu": "销售订单管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "系统公告列表",
					"menuJump": "列表",
					"tableName": "xitonggonggao"
				}],
				"menu": "系统公告管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "商品入库列表",
					"menuJump": "列表",
					"tableName": "shangpinruku"
				}],
				"menu": "商品入库管理"
			}],
			"frontMenu": [],
			"roleName": "销售部",
			"tableName": "xiaoshoubu"
		}, {
			"backMenu": [{
				"child": [{
					"buttons": ["查看", "盘点", "入库"],
					"menu": "商品信息列表",
					"menuJump": "列表",
					"tableName": "shangpinxinxi"
				}],
				"menu": "商品信息管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除"],
					"menu": "库存盘点列表",
					"menuJump": "列表",
					"tableName": "kucunpandian"
				}],
				"menu": "库存盘点管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "商品进货列表",
					"menuJump": "列表",
					"tableName": "shangpinjinhuo"
				}],
				"menu": "商品进货管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "销售订单列表",
					"menuJump": "列表",
					"tableName": "xiaoshoudingdan"
				}],
				"menu": "销售订单管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "系统公告列表",
					"menuJump": "列表",
					"tableName": "xitonggonggao"
				}],
				"menu": "系统公告管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除"],
					"menu": "商品入库列表",
					"menuJump": "列表",
					"tableName": "shangpinruku"
				}],
				"menu": "商品入库管理"
			}],
			"frontMenu": [],
			"roleName": "仓库",
			"tableName": "cangku"
		}, {
			"backMenu": [{
				"child": [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "供应商列表",
					"menuJump": "列表",
					"tableName": "gongyingshang"
				}],
				"menu": "供应商管理"
			}, {
				"child": [{
					"buttons": ["查看", "进货"],
					"menu": "商品信息列表",
					"menuJump": "列表",
					"tableName": "shangpinxinxi"
				}],
				"menu": "商品信息管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "库存盘点列表",
					"menuJump": "列表",
					"tableName": "kucunpandian"
				}],
				"menu": "库存盘点管理"
			}, {
				"child": [{
					"buttons": ["查看", "修改", "删除", "报表"],
					"menu": "商品进货列表",
					"menuJump": "列表",
					"tableName": "shangpinjinhuo"
				}],
				"menu": "商品进货管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "销售订单列表",
					"menuJump": "列表",
					"tableName": "xiaoshoudingdan"
				}],
				"menu": "销售订单管理"
			}, {
				"child": [{
					"buttons": ["查看"],
					"menu": "商品入库列表",
					"menuJump": "列表",
					"tableName": "shangpinruku"
				}],
				"menu": "商品入库管理"
			}],
			"frontMenu": [],
			"roleName": "采购部",
			"tableName": "caigoubu"
		}]
	}
}
export default menu;
