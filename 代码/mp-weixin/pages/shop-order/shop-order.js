(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/shop-order/shop-order"],{"00fb":function(e,t,n){},"2c9f":function(e,t,n){"use strict";var r={"mescroll-uni":function(){return Promise.all([n.e("common/vendor"),n.e("components/mescroll-uni/mescroll-uni")]).then(n.bind(null,"6ae1"))}},s=function(){var e=this,t=e.$createElement;e._self._c},a=[];n.d(t,"b",(function(){return s})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return r}))},"77e8":function(e,t,n){"use strict";(function(e){n("52ba"),n("921b");r(n("66fd"));var t=r(n("a97f"));function r(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,n("543d")["createPage"])},"85e9":function(e,t,n){"use strict";var r=n("00fb"),s=n.n(r);s.a},a97f:function(e,t,n){"use strict";n.r(t);var r=n("2c9f"),s=n("d5e0");for(var a in s)"default"!==a&&function(e){n.d(t,e,(function(){return s[e]}))}(a);n("85e9");var u,c=n("f0c5"),i=Object(c["a"])(s["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],u);t["default"]=i.exports},d24c:function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=s(n("a34a"));function s(e){return e&&e.__esModule?e:{default:e}}function a(e,t,n,r,s,a,u){try{var c=e[a](u),i=c.value}catch(o){return void n(o)}c.done?t(i):Promise.resolve(i).then(r,s)}function u(e){return function(){var t=this,n=arguments;return new Promise((function(r,s){var u=e.apply(t,n);function c(e){a(u,r,s,c,i,"next",e)}function i(e){a(u,r,s,c,i,"throw",e)}c(void 0)}))}}var c={data:function(){return{navlist:["全部","未支付","已支付","已完成","已取消","已退款"],currentIndex:0,pages:1,list:[],mescroll:null,downOption:{auto:!1},upOption:{page:{},noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0,status:"",user:""}},onShow:function(){var t=u(r.default.mark((function t(){var n,s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return n=e.getStorageSync("nowTable"),t.next=3,this.$api.session(n);case 3:s=t.sent,this.user=s.data,this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll();case 7:case"end":return t.stop()}}),t,this)})));function n(){return t.apply(this,arguments)}return n}(),methods:{navselect:function(e,t){this.currentIndex=e,this.status="全部"==t?"":"已支付"==t?"已支付":t,this.hasNext=!0,this.mescroll&&this.mescroll.resetUpScroll()},mescrollInit:function(e){this.mescroll=e},downCallback:function(e){this.hasNext=!0,e.resetUpScroll()},upCallback:function(){var e=u(r.default.mark((function e(t){var n,s;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n={page:t.num,limit:t.size},this.status&&(n["status"]=this.status),e.next=4,this.$api.page("orders",n);case 4:s=e.sent,1==t.num&&(this.list=[]),this.list=this.list.concat(s.data.list),0==s.data.list.length&&(this.hasNext=!1),t.endSuccess(t.size,this.hasNext);case 9:case"end":return e.stop()}}),e,this)})));function t(t){return e.apply(this,arguments)}return t}(),onCancelTap:function(){var t=u(r.default.mark((function t(n){var s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:s=this,e.showModal({title:"提示",content:"是否确认退款",success:function(){var t=u(r.default.mark((function t(a){var u;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(u=e.getStorageSync("nowTable"),!a.confirm){t.next=10;break}return n.status="已退款",t.next=5,s.$api.update("orders",n);case 5:t.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll(),1==n.type?s.user.money=s.user.money+n.total:2==n.type&&(s.user.jifen=s.user.jifen+n.total),s.$api.update(u,s.user);case 10:case"end":return t.stop()}}),t)})));function a(e){return t.apply(this,arguments)}return a}()});case 2:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}(),exchange:function(){var t=u(r.default.mark((function t(n){var s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:s=this,e.showModal({title:"提示",content:"是否兑换",success:function(){var e=u(r.default.mark((function e(t){return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!t.confirm){e.next=7;break}return n.status="已完成",e.next=4,s.$api.update("orders",n);case 4:e.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll();case 7:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()});case 2:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}(),cancel:function(){var t=u(r.default.mark((function t(n){var s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:s=this,e.showModal({title:"提示",content:"是否取消订单",success:function(){var e=u(r.default.mark((function e(t){return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!t.confirm){e.next=7;break}return n.status="已取消",e.next=4,s.$api.update("orders",n);case 4:e.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll();case 7:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()});case 2:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}(),pay:function(){var t=u(r.default.mark((function t(n){var s,a;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:s=this,a=e.getStorageSync("nowTable"),e.showModal({title:"提示",content:"是否支付订单",success:function(){var e=u(r.default.mark((function e(t){return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!t.confirm){e.next=25;break}if(1!=n.type){e.next=12;break}if(!(s.user.money-n.total<0)){e.next=5;break}return s.$utils.msg("余额不足，请先充值"),e.abrupt("return");case 5:return s.$utils.msgBack("支付成功"),s.user.money=s.user.money-n.total,(s.user.jifen||0==s.user.jifen)&&(s.user.jifen=parseFloat(s.user.jifen)+parseFloat(n.total)),e.next=10,s.$api.update(a,s.user);case 10:e.next=20;break;case 12:if(2!=n.type){e.next=20;break}if(!(s.user.jifen-n.total<0)){e.next=16;break}return s.$utils.msg("积分不足，兑换商品失败"),e.abrupt("return");case 16:return s.$utils.msgBack("兑换成功"),s.user.jifen=s.user.jifen-n.total,e.next=20,s.$api.update(a,s.user);case 20:return n.status="已支付",e.next=23,s.$api.update("orders",n);case 23:e.sent,s.mescroll&&s.mescroll.resetUpScroll();case 25:case"end":return e.stop()}}),e)})));function t(t){return e.apply(this,arguments)}return t}()});case 3:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}(),onConfirm:function(){var t=u(r.default.mark((function t(n){var s;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:s=this,e.showModal({title:"提示",content:"是否确认收货",success:function(){var t=u(r.default.mark((function t(a){return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e.getStorageSync("nowTable"),!a.confirm){t.next=8;break}return n.status="已完成",t.next=5,s.$api.update("orders",n);case 5:t.sent,s.hasNext=!0,s.mescroll&&s.mescroll.resetUpScroll();case 8:case"end":return t.stop()}}),t)})));function a(e){return t.apply(this,arguments)}return a}()});case 2:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}()}};t.default=c}).call(this,n("543d")["default"])},d5e0:function(e,t,n){"use strict";n.r(t);var r=n("d24c"),s=n.n(r);for(var a in r)"default"!==a&&function(e){n.d(t,e,(function(){return r[e]}))}(a);t["default"]=s.a}},[["77e8","common/runtime","common/vendor"]]]);