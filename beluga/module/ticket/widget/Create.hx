package beluga.module.ticket.widget;

import beluga.core.Beluga;
import beluga.core.widget.MttWidget;
import beluga.core.macro.ConfigLoader;
import beluga.module.ticket.Ticket;

class Create extends MttWidget {
    var mod : Ticket;

    public function new (mttfile = "beluga_ticket_create.mtt") {
        super(mttfile);
        mod = Beluga.getInstance().getModuleInstance(Ticket);
    }

    override private function getContext() {
        var context = mod.getCreateContext();
        context.base_url = ConfigLoader.getBaseUrl();
        context.id = MttWidget.id++;
        return context;
    }
}