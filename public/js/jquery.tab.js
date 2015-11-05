(function ($) {
	function createObj(o) {
		function F() {}
		F.prototype = o;
		return new F()
	}
	var Tab = {
		init : function (elem, options) {
			var self = this;
			var tabPanelSlt = [];
			self.$elem = $(elem);
			self.options = $.extend({}, $.fn.tab.options, options);
			self.$tabTrigger = self.$elem.find(self.options.tabTrigger);
			self.$tabTrigger.each(function () {
				tabPanelSlt.push($(this).attr('tabid'))
			});
			self.$tabPanel = $(tabPanelSlt.join(','));
			self.$tabPanel.parent().css({
				'overflow' : 'visible',
				'position' : function () {
					var pos = $(this).css('position');
					if (pos === 'static' || pos === 'inherit')
						pos = self.options.tabPanelContainerPos;
					return pos
				}
			});
			self.$tabPanel.css({
				'position' : 'relative',
				'top' : 0
			});
			self.$tabTrigger.on(self.options.event, function (e) {
				self.$tabTrigger.removeClass(self.options.activeStyle);
				$(this).addClass(self.options.activeStyle);
				self.$tabPanel.hide();
				self.$activePanel = self.$tabPanel.filter($(this).attr('tabid'));
				self.$activePanel.show();
				self.$tabPanel.parent().css('min-height', self.$activePanel.height());
				e.preventDefault()
			}).on('click', function (e) {
				e.preventDefault()
			});
			$(self.$tabTrigger).eq(self.options.initialIndex).trigger(self.options.event);
		}
	};
	$.fn.tab = function (options) {
		var data = this.data('tab');
		if (data)
			return data;
		return this.each(function () {
			var tab = createObj(Tab);
			tab.init(this, options);
			$(this).data('tab', tab)
		})
	};
	$.fn.tab.options = {
		tabTrigger : '.js-tab-trigger',
		tabPanelContainerPos : 'relative',
		activeStyle : 'tab-active',
		initialIndex : 0,
		event : 'click.tab'
	}
})(jQuery);
