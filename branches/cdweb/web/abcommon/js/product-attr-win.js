/**
 * 商品基本属性/扩展属性 修改窗口
 *
 * @author shiyan.wu
 *
 * @param productId  商品ID
 */
function ProductAttrWin(productId){

    this.productId = productId;
    
    //------------------底部工具条按钮定义-------------------------
    var btnOk = new Ext.Button({
        text: '保存当前属性页',
        iconCls: 'confirm',
        handler: (function() {
            var curTab = tabpnl.getActiveTab();
            if(curTab.getId() == '_product_core_attr_tab'){  //保存基本属性
                this.saveCoreAttr();
            }else if(curTab.getId() == '_product_extend_attr_tab'){
                this.saveExtendAttr();
            }
        }).createDelegate(this)
    });
    var btnClose = new Ext.Button({
        text: '关闭',
        iconCls: 'close',
        handler: function() {
            //todo
        }
    });

    //-------------------------------------------------------------

    //商品图片上传表单
    this.frmUpload = new Ext.FormPanel({
        id: '_product_photo_upload_form',
        region: 'south',
        fileUpload: true,
        items: [{
            xtype: 'textfield',
            name: "photo",
	    fieldLabel: "产品图片",
            inputType: "file",
            blankText:"请选择图片."
        }],
        buttons: [{
            text: '上传',
            handler: function() {
                /*
                form.getForm().submit({
                    success: function(form, action){
                        Ext.Msg.alert('信息', action.result.msg);
                    },
                    failure: function(){
                        Ext.Msg.alert('错误', '失败');
                    }
                });*/
            }
        }]
    });

    //商品基本属性修改表单
    this.frmCoreAttr = new Ext.FormPanel({
        id: '_product_core_attr_form',
        region: 'center',
        defaultType: 'textfield',
        items: []
    });

    //基本属性标签页
    this.pnlCoreAttr = new Ext.Panel({
        id: '_product_core_attr_tab',
        title: '基本属性',
        layout: 'border',
        defaults: {
            labelWidth: 80,
            labelAlign: "right",
            bodyStyle: 'padding:5px 5px 5px 0'
        },
        items: [this.frmCoreAttr, this.frmUpload]
    });

    this.frmExtendAttr = new Ext.FormPanel({
        id: '_product_extend_attr_tab',
        title: '扩展属性',
        defaults: {
            anchor: '98%'
        },
        labelWidth: 80,
        labelAlign: "right",
        bodyStyle: 'padding:5px 5px 5px 0',
        defaultType: 'textfield',
        items: [{  //必须有元素，否则切换回其他标签页会错误
            name: "fuckext",
            xtype: 'label'
        }]
    });

    this.gridUomSetting = new SimpleGrid.Panel({
        id: '_product_uom_setting_tab',
        title: '计量单位',
        editor: true,
        region: 'center',
        layout: 'fit',
        notPaging: true,
        autoWidth: true,
        cm: [
            {header: '单位编码', dataIndex: 'code', width:120},
            {header: '单位名称', dataIndex: 'name', width:120},
            {header: '是否有效', dataIndex: 'enabled', width:60, renderer: function(val){
	    	return val === true?'是':'否'
             }},
            {header: '换算比例',dataIndex: 'quotiety',
                editor: new Ext.grid.GridEditor(new Ext.form.TextField({allowBlank: false}))
            }
        ],
        recordFn: [
           {name: 'id', type: 'int' },
           {name: 'measureUnitId', type: 'int'},
           {name: 'code'},
           {name: 'name'},
           {name: 'enabled', type: 'boolean'},
           {name: 'mainUnit', type: 'boolean'},
           {name: 'quotiety', type: 'float'}
        ],
        url: 'testjson/product_rate_list.json'
    });

    var tabpnl = new Ext.TabPanel({
        height: 400,
        border: true,
        layoutOnTabChange: true,   //重要
        bbar: ['->', btnOk, '-', btnClose],
        items: [this.pnlCoreAttr, this.frmExtendAttr, this.gridUomSetting.grid]

    });
    tabpnl.activate(0);
    tabpnl.on("beforetabchange", (function(tbp, newTab, currentTab){
        if(newTab.getId() == '_product_extend_attr_tab' && !this.blExtendTabReady){
            this.initExtendTab(newTab);
        }else if(newTab.getId() == '_product_uom_setting_tab' && !this.blUomTabReady){
            this.gridUomSetting.load();
            this.blUomTabReady = true;
        }
    }).createDelegate(this));

    //弹出窗口
    this.win = new Ext.Window({
        title: '编辑商品属性',
        width: 350,    //如果不在Window设置高度，IE会撑开，非常郁闷啊
        autoHeight: true,
        resizable: false,
        modal: true,
        closeAction: 'close',
        items: [tabpnl],
        layout: 'fit'
    });
}
ProductAttrWin.prototype = {

    //显示窗口
    show: function(){
       this.initCoreTab(this.frmCoreAttr);
    },

    /**
     * 初始化基本属性标签页
     *
     */
    initCoreTab: function(frm){
       Ext.Ajax.request({
           url: 'product/product-list-base-attributes',
           method: 'GET',
           params: 'id='+this.productId,
           success: function(resp){
               var objResp = Ext.util.JSON.decode(resp.responseText);
               if(!objResp)
                   return;
               
               this.win.show();

               if(typeof objResp == 'object'){

                   this.action_save_core_attr = 'product/'+objResp.actionName;  //保存基本属性的URL
                   
                   var _fields = objResp.fields;   //基本属性表单元素数组
                   for(var ia=0; ia<_fields.length; ia++){
                       var kk = _fields[ia];
                       if(typeof kk == 'object'){
                           frm.add({
                              xtype: kk['xtype'],
                              name: kk['fieldName'],
	                      fieldLabel: kk['fieldLabel'],
                              value: kk['value'],
                              disabled: kk['disabled'],
                              anchor: '98%'
                           });
                       }
                   }
                   if(objResp.actionName.indexOf('paper')>0){  //根据保存的是纸张或纸浆来设置ID隐藏域
                       frm.add({
                            xtype: 'hidden',
                            name: 'paper.id',
                            value: this.productId
                       });
                   }else{
                       frm.add({
                            xtype: 'hidden',
                            name: 'pulp.id',
                            value: this.productId
                       });
                   }
                   frm.doLayout();
               }
           },
           scope: this
        });
    },

    /**
     * 初始化扩展属性标签页
     * 动态添加表单元素
     *
     */
    initExtendTab: function(frm){
        Ext.Ajax.request({
           url: 'testjson/product_extend_attribute.json',
           //url: 'product/product-list-extend-attributes',
           method: 'GET',
           params: 'id='+this.productId,
           success: function(resp){
               var objResp = Ext.util.JSON.decode(resp.responseText);
               if(!objResp)
                   return;

               if(typeof objResp == 'object'){
                   var _fields = objResp.list;   //扩展属性元素数组
                   for(var ia=0; ia<_fields.length; ia++){
                       var kk = _fields[ia];
                       if(typeof kk == 'object'){
                           frm.add({
                              name: 'extendAttrField_'+kk['id'],
	                      fieldLabel: kk['attributeLabel'],
                              value: kk['attributeValue'],
                              extendAttributeId: kk['extendAttributeId'],
                              extendAttributeValueId: kk['id']
                           });
                       }
                   }
                   frm.doLayout();   //动态添加元素后如果没有重新布局，不会显示
                   this.blExtendTabReady = true;
               }
           },
           scope: this
        });
    },

    /**
     * 保存基本属性
     *
     */
    saveCoreAttr: function(){
        this.frmCoreAttr.getForm().submit({
            url: this.action_save_core_attr,
            waitTitle: '请稍候',
            waitMsg: '正在提交数据,请稍候...',
            success: function(form, action){
                Ext.Msg.show({
                    title: '系统消息',
                    msg: '保存成功!',
                    buttons: {ok:'返回'}
                });
            },
            failure: function(form, action){
                if(!action.result.timeout){  //SESSION超时 留给全局监听器处理
                    Ext.Msg.show({
                        title: '系统消息',
                        msg: '保存失败! '+ (action.result.message || ''),
                        buttons: Ext.Msg.OK,
                        icon : Ext.Msg.ERROR
                    });
                }
            }
        });
    },

    /**
     * 保存扩展属性
     *
     */
    saveExtendAttr: function(){
        var frm = this.frmExtendAttr;

        //将表单中所有的输入框组装成json对象
        var arr = [];
        var frmFields = frm.findBy(function(cmp){
            return cmp.name.indexOf('extendAttrField_') >= 0
        });
        if(frmFields && frmFields.length>0){
            for(var ii=0;ii<frmFields.length;ii++){
                var kk = frmFields[ii];
                arr.push({
                   extendAttributeId: kk.extendAttributeId,
                   value: kk.getValue(),
                   id: kk.extendAttributeValueId
                });
            }
        }
        var saveData = {productId: this.productId, list: arr};

        Ext.Ajax.request({
           url: 'testjson/get_parameters.jsp',
           //url: 'product/product-list-extend-attributes',
           method: 'POST',
           success: function(resp){
           },
           scope: this,
           jsonData: saveData
        });
    },

    reset: function(){
        //TODO
    }
}
