(function(){var e;e=jQuery,e(document).on("click","#list input.toggle",function(){return e("#list [name='bulk_ids[]']").attr("checked",e(this).is(":checked"))}),e(document).on("click",".pjax",function(t){if(!(t.which>1||t.metaKey||t.ctrlKey)){if(e.support.pjax)return t.preventDefault(),e.pjax({container:e(this).data("pjax-container")||"[data-pjax-container]",url:e(this).data("href")||e(this).attr("href"),timeout:2e3});if(e(this).data("href"))return window.location=e(this).data("href")}}),e(document).on("submit",".pjax-form",function(t){if(e.support.pjax)return t.preventDefault(),e.pjax({container:e(this).data("pjax-container")||"[data-pjax-container]",url:this.action+(this.action.indexOf("?")!==-1?"&":"?")+e(this).serialize(),timeout:2e3})}),e(document).on("pjax:start",function(){return e("#loading").show()}).on("pjax:end",function(){return e("#loading").hide()}),e(document).on("click","[data-target]",function(){if(!e(this).hasClass("disabled")){if(e(this).has("i.icon-chevron-down").length)return e(this).removeClass("active").children("i").toggleClass("icon-chevron-down icon-chevron-right"),e(e(this).data("target")).select(":visible").hide("slow");if(e(this).has("i.icon-chevron-right").length)return e(this).addClass("active").children("i").toggleClass("icon-chevron-down icon-chevron-right"),e(e(this).data("target")).select(":hidden").show("slow")}}),e(document).on("click",".form-horizontal legend",function(){if(e(this).has("i.icon-chevron-down").length)return e(this).siblings(".control-group:visible").hide("slow"),e(this).children("i").toggleClass("icon-chevron-down icon-chevron-right");if(e(this).has("i.icon-chevron-right").length)return e(this).siblings(".control-group:hidden").show("slow"),e(this).children("i").toggleClass("icon-chevron-down icon-chevron-right")}),e(document).ready(function(){return e(document).trigger("rails_admin.dom_ready")}),e(document).on("pjax:end",function(){return e(document).trigger("rails_admin.dom_ready")}),e(document).on("rails_admin.dom_ready",function(){return e(".animate-width-to").each(function(){var t,n;return t=e(this).data("animate-length"),n=e(this).data("animate-width-to"),e(this).animate({width:n},t,"easeOutQuad")}),e(".form-horizontal legend").has("i.icon-chevron-right").each(function(){return e(this).siblings(".control-group").hide()}),e(".table").tooltip({selector:"th[rel=tooltip]"})})}).call(this);