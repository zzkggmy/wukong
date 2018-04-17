package com.wukong.services.ble;

import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;

public class ParserUtils
{
    private static final char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();

    public static String parse(BluetoothGattCharacteristic paramBluetoothGattCharacteristic)
    {
        return parse(paramBluetoothGattCharacteristic.getValue());
    }

    public static String parse(BluetoothGattDescriptor paramBluetoothGattDescriptor)
    {
        return parse(paramBluetoothGattDescriptor.getValue());
    }

    public static String parse(byte[] paramArrayOfByte)
    {
        if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
            return "";
        char[] arrayOfChar = new char[-1 + 3 * paramArrayOfByte.length];
        for (int i = 0; i < paramArrayOfByte.length; i++)
        {
            int j = 0xFF & paramArrayOfByte[i];
            arrayOfChar[(i * 3)] = HEX_ARRAY[(j >>> 4)];
            arrayOfChar[(1 + i * 3)] = HEX_ARRAY[(j & 0xF)];
            if (i != -1 + paramArrayOfByte.length)
                arrayOfChar[(2 + i * 3)] = '-';
        }
        return "(0x) " + new String(arrayOfChar);
    }
}