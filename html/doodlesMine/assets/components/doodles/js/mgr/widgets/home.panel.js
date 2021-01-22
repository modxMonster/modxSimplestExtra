Doodles.panel.Home = function (config) {
  config = config || {};
  Ext.apply(config, {
    border: false,
    baseCls: "modx-formpanel",
    cls: "container",
    items: [
      {
        html: "<h2>" + _("doodles.management") + "</h2>",
        border: false,
        cls: "modx-page-header",
      },
      {
        xtype: "modx-tabs",
        defaults: { border: false, autoHeight: true },
        border: true,
        items: [
          {
            title: _("doodles"),
            defaults: { autoHeight: true },
            items: [
              {
                html:
                  "<p>" +
                  _("doodles.management_desc") +
                  "</p>",
                border: false,
                bodyCssClass: "panel-desc",
              } ,{
                    xtype: 'doodles-grid-doodles'
                    ,cls: 'main-wrapper'
                    ,preventRender: true
                },
            ],
          },
        ],
        // only to redo the grid layout after the content is rendered
        // to fix overflow components' panels, especially when scroll bar is shown up
        listeners: {
          afterrender: function (tabPanel) {
            tabPanel.doLayout();
          },
        },
      },
    ],
  });
  Doodles.panel.Home.superclass.constructor.call(this, config);
};
Ext.extend(Doodles.panel.Home, MODx.Panel);
Ext.reg("doodles-panel-home", Doodles.panel.Home);
