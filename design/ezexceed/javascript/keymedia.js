define(['edit/datatypes/base', 'keymedia/views/main', './templates'], function(Base, MainView)
{
    return Base.extend({
        initialize : function(options)
        {
            _.bindAll(this);
            this.init(options);
            _.extend(this, _.pick(options, ['version']));
            this.view = new MainView({
                el : options.el,
                id : options.objectId,
                version : options.version
            });

            this.model.on('autosave.saved', this.saved, this);
            this.view.on('save', this.save, this);
        },

        render : function()
        {
            this.view.render();
            return this;
        },

        save : function(id, data)
        {
            this.model.attr(id, this.version, data);
        },

        saved : function()
        {
            this.view.trigger('saved');
        },

        parseEdited : function()
        {
        }
    });
});
