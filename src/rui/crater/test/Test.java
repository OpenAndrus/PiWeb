package rui.crater.test;


import com.pi4j.io.gpio.GpioPinDigitalMultipurpose;
import rui.crater.tools.GpioUnit;
import rui.crater.tools.JsonHelper;

public class Test {
    public static void main(String[] args) {
        GpioPinDigitalMultipurpose gpio = GpioUnit.getInstance().getGpioPinDigitalMultipurpose("GPIO_00");

        JsonHelper json = new JsonHelper().setReturnCode("0", "success");
        json.addcontent("Mode", gpio.getMode().toString());
        json.addcontent("State", gpio.getState().toString());
        json.finishline().finisharray("gpioresult");
        System.out.print(json.getJsonString());
    }
}
