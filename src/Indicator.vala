public class Indicator : Wingpanel.Indicator
{
    private Gtk.Widget systray;
    
    public Indicator()
    {
        /* Some information about the indicator */
        Object
        (
            code_name : "sample-indicator" /* Unique name */
        );
    }

    construct
    {
        systray = Gtkx11Tray.get_systray(Gtk.Orientation.HORIZONTAL);

        this.visible = true;
    }

    /* This method is called to get the widget that is displayed in the panel */
    public override Gtk.Widget get_display_widget ()
    {
        return systray;
    }

    /* This method is called to get the widget that is displayed in the popover */
    public override Gtk.Widget? get_widget ()
    {
        return new Gtk.Label ("should not be shown");
    }

    /* This method is called when the indicator popover opened */
    public override void opened ()
    {
        /* Use this method to get some extra information while displaying the indicator */
    }

    /* This method is called when the indicator popover closed */
    public override void closed ()
    {
        /* Your stuff isn't shown anymore, now you can free some RAM, stop timers or anything else... */
    }
}

/*
 * This method is called once after your plugin has been loaded.
 * Create and return your indicator here if it should be displayed on the current server.
 */
public Wingpanel.Indicator? get_indicator (Module module, Wingpanel.IndicatorManager.ServerType server_type)
{
    /* A small message for debugging reasons */
    debug ("Activating Sample Indicator");

    /* Check which server has loaded the plugin */
    if (server_type != Wingpanel.IndicatorManager.ServerType.SESSION)
    {
        /* We want to display our sample indicator only in the "normal" session, not on the login screen, so stop here! */
        return null;
    }

    /* Create the indicator */
    var indicator = new Indicator ();

    /* Return the newly created indicator */
    return indicator;
}