package rui.crater.tools;

import com.pi4j.io.gpio.*;

import java.util.HashMap;
import java.util.Map;

public class GpioUnit {

    private static final GpioController gpio;
    private static final GpioPinDigitalMultipurpose GPIO_00;
    private static final GpioPinDigitalMultipurpose GPIO_01;
    private static final GpioPinDigitalMultipurpose GPIO_02;
    private static final GpioPinDigitalMultipurpose GPIO_03;
    private static final GpioPinDigitalMultipurpose GPIO_04;
    private static final GpioPinDigitalMultipurpose GPIO_05;
    private static final GpioPinDigitalMultipurpose GPIO_06;
    private static final GpioPinDigitalMultipurpose GPIO_07;
    private static final GpioPinDigitalMultipurpose GPIO_08;
    private static final GpioPinDigitalMultipurpose GPIO_09;
    private static final GpioPinDigitalMultipurpose GPIO_10;
    private static final GpioPinDigitalMultipurpose GPIO_11;
    private static final GpioPinDigitalMultipurpose GPIO_12;
    private static final GpioPinDigitalMultipurpose GPIO_13;
    private static final GpioPinDigitalMultipurpose GPIO_14;
    private static final GpioPinDigitalMultipurpose GPIO_15;
    private static final GpioPinDigitalMultipurpose GPIO_16;
//    private static final GpioPinDigitalMultipurpose GPIO_17;
//    private static final GpioPinDigitalMultipurpose GPIO_18;
//    private static final GpioPinDigitalMultipurpose GPIO_19;
//    private static final GpioPinDigitalMultipurpose GPIO_20;
//    private static final GpioPinDigitalMultipurpose GPIO_21;
//    private static final GpioPinDigitalMultipurpose GPIO_22;
//    private static final GpioPinDigitalMultipurpose GPIO_23;
//    private static final GpioPinDigitalMultipurpose GPIO_24;
//    private static final GpioPinDigitalMultipurpose GPIO_25;
//    private static final GpioPinDigitalMultipurpose GPIO_26;
//    private static final GpioPinDigitalMultipurpose GPIO_27;
//    private static final GpioPinDigitalMultipurpose GPIO_28;
//    private static final GpioPinDigitalMultipurpose GPIO_29;

    private static final Map<String, GpioPinDigitalMultipurpose> gpioMap;

    static {
        gpio = GpioFactory.getInstance();
        gpioMap = new HashMap<>();
        GPIO_00 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_00, "GPIO_00", PinMode.DIGITAL_OUTPUT);
        GPIO_01 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_01, "GPIO_01", PinMode.DIGITAL_OUTPUT);
        GPIO_02 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_02, "GPIO_02", PinMode.DIGITAL_OUTPUT);
        GPIO_03 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_03, "GPIO_03", PinMode.DIGITAL_OUTPUT);
        GPIO_04 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_04, "GPIO_04", PinMode.DIGITAL_OUTPUT);
        GPIO_05 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_05, "GPIO_05", PinMode.DIGITAL_OUTPUT);
        GPIO_06 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_06, "GPIO_06", PinMode.DIGITAL_OUTPUT);
        GPIO_07 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_07, "GPIO_07", PinMode.DIGITAL_OUTPUT);
        GPIO_08 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_08, "GPIO_08", PinMode.DIGITAL_OUTPUT);
        GPIO_09 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_09, "GPIO_09", PinMode.DIGITAL_OUTPUT);
        GPIO_10 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_10, "GPIO_10", PinMode.DIGITAL_OUTPUT);
        GPIO_11 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_11, "GPIO_11", PinMode.DIGITAL_OUTPUT);
        GPIO_12 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_12, "GPIO_12", PinMode.DIGITAL_OUTPUT);
        GPIO_13 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_13, "GPIO_13", PinMode.DIGITAL_OUTPUT);
        GPIO_14 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_14, "GPIO_14", PinMode.DIGITAL_OUTPUT);
        GPIO_15 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_15, "GPIO_15", PinMode.DIGITAL_OUTPUT);
        GPIO_16 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_16, "GPIO_16", PinMode.DIGITAL_OUTPUT);
//        GPIO_17 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_17, "GPIO_17", PinMode.DIGITAL_OUTPUT);
//        GPIO_18 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_18, "GPIO_18", PinMode.DIGITAL_OUTPUT);
//        GPIO_19 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_19, "GPIO_19", PinMode.DIGITAL_OUTPUT);
//        GPIO_20 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_20, "GPIO_20", PinMode.DIGITAL_OUTPUT);
//        GPIO_21 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_21, "GPIO_21", PinMode.DIGITAL_OUTPUT);
//        GPIO_22 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_22, "GPIO_22", PinMode.DIGITAL_OUTPUT);
//        GPIO_23 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_23, "GPIO_23", PinMode.DIGITAL_OUTPUT);
//        GPIO_24 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_24, "GPIO_24", PinMode.DIGITAL_OUTPUT);
//        GPIO_25 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_25, "GPIO_25", PinMode.DIGITAL_OUTPUT);
//        GPIO_26 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_26, "GPIO_26", PinMode.DIGITAL_OUTPUT);
//        GPIO_27 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_27, "GPIO_27", PinMode.DIGITAL_OUTPUT);
//        GPIO_28 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_28, "GPIO_28", PinMode.DIGITAL_OUTPUT);
//        GPIO_29 = gpio.provisionDigitalMultipurposePin(RaspiPin.GPIO_29, "GPIO_29", PinMode.DIGITAL_OUTPUT);

        gpioMap.put("GPIO_00", GPIO_00);
        gpioMap.put("GPIO_01", GPIO_01);
        gpioMap.put("GPIO_02", GPIO_02);
        gpioMap.put("GPIO_03", GPIO_03);
        gpioMap.put("GPIO_04", GPIO_04);
        gpioMap.put("GPIO_05", GPIO_05);
        gpioMap.put("GPIO_06", GPIO_06);
        gpioMap.put("GPIO_07", GPIO_07);
        gpioMap.put("GPIO_08", GPIO_08);
        gpioMap.put("GPIO_09", GPIO_09);
        gpioMap.put("GPIO_10", GPIO_10);
        gpioMap.put("GPIO_11", GPIO_11);
        gpioMap.put("GPIO_12", GPIO_12);
        gpioMap.put("GPIO_13", GPIO_13);
        gpioMap.put("GPIO_14", GPIO_14);
        gpioMap.put("GPIO_15", GPIO_15);
        gpioMap.put("GPIO_16", GPIO_16);
//        gpioMap.put("GPIO_17", GPIO_17);
//        gpioMap.put("GPIO_18", GPIO_18);
//        gpioMap.put("GPIO_19", GPIO_19);
//        gpioMap.put("GPIO_20", GPIO_20);
//        gpioMap.put("GPIO_21", GPIO_21);
//        gpioMap.put("GPIO_22", GPIO_22);
//        gpioMap.put("GPIO_23", GPIO_23);
//        gpioMap.put("GPIO_24", GPIO_24);
//        gpioMap.put("GPIO_25", GPIO_25);
//        gpioMap.put("GPIO_26", GPIO_26);
//        gpioMap.put("GPIO_27", GPIO_27);
//        gpioMap.put("GPIO_28", GPIO_28);
//        gpioMap.put("GPIO_29", GPIO_29);

    }

    private final static GpioUnit instance = new GpioUnit();

    private GpioUnit() {
    }

    public static GpioUnit getInstance() {
        return instance;
    }

    /**
     * 用gpio名称获取该gpio的对象
     *
     * @param gpioname 该gpio的名字
     * @return 该gpio对象
     */
    public GpioPinDigitalMultipurpose getGpioPinDigitalMultipurpose(String gpioname) {
        return gpioMap.get(gpioname);
    }

    /**
     * 获取gpio总个数
     *
     * @return
     */
    public int getGpioCount() {
        return this.gpioMap.size();
    }

    /**
     * 获取存储gpio的Map
     *
     * @return
     */
    public Map<String, GpioPinDigitalMultipurpose> getGpioMap() {
        return this.gpioMap;
    }

}
