package beluga.module.market.api;

// Beluga core
import beluga.core.Beluga;
import beluga.core.Widget;
import beluga.core.BelugaException;

// Beluga mods
import beluga.module.market.Market;

// Haxe
import haxe.web.Dispatch;

class MarketApi {
    var beluga : Beluga;
    var market : Market;

    public function new(beluga: Beluga, market: Market) {
        this.beluga = beluga;
        this.market = market;
    }

    public function doDisplay(): Void {
        beluga.triggerDispatcher.dispatch("beluga_market_display", []);
    }

    public function doAdmin(): Void {
        beluga.triggerDispatcher.dispatch("beluga_market_display_admin", []);
    }

    public function doCart(): Void {
        beluga.triggerDispatcher.dispatch("beluga_market_display_cart", []);
    }

    public function doAddProductToCart(args: { id: Int }): Void {
        beluga.triggerDispatcher.dispatch("beluga_market_add_product_to_cart", [args]);
    }

    public function doRemoveProductInCart(args: { id: Int }): Void {
        beluga.triggerDispatcher.dispatch("beluga_market_remove_product_in_cart", [args]);
    }

    public function doCheckoutCart(): Void {
        beluga.triggerDispatcher.dispatch("beluga_market_checkout_cart", []);
    }


    public function doDefault(): Void {
        trace("Market default page");
    }

    public function doCss(d: Dispatch): Void {
        d.dispatch(new CssApi());
    }
}