(function(){var e;e=jQuery,e(document).ready(function(){return window.nestedFormEvents.insertFields=function(t,n,r){var i;return i=e(r).closest(".controls").siblings(".tab-content"),i.append(t),i.children().last()}}),e(document).on("nested:fieldAdded","form",function(t){var n,r,i,s,o,u;return r=t.field.addClass("tab-pane").attr("id","unique-id-"+(new Date).getTime()),s=e('<li><a data-toggle="tab" href="#'+r.attr("id")+'">'+r.children(".object-infos").data("object-label")+"</a></li>"),o=r.closest(".control-group"),n=o.children(".controls"),i=n.children(".nav"),t=o.children(".tab-content"),u=n.find(".toggler"),i.append(s),e(window.document).trigger("rails_admin.dom_ready"),s.children("a").tab("show"),i.select(":hidden").show("slow"),t.select(":hidden").show("slow"),u.addClass("active").removeClass("disabled").children("i").addClass("icon-chevron-down").removeClass("icon-chevron-right")}),e(document).on("nested:fieldRemoved","form",function(e){var t,n,r,i,s,o;r=e.field,i=r.closest(".control-group").children(".controls").children(".nav"),n=i.children("li").has("a[href=#"+r.attr("id")+"]"),s=r.closest(".control-group"),t=s.children(".controls"),o=t.find(".toggler"),(n.next().length?n.next():n.prev()).children("a:first").tab("show"),n.remove();if(i.children().length===0)return i.select(":visible").hide("slow"),o.removeClass("active").addClass("disabled").children("i").removeClass("icon-chevron-down").addClass("icon-chevron-right")})}).call(this);