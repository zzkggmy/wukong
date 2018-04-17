package com.wukong.services.gym;

class BLEConUpdateEvent
{
    private final int mConState;

    BLEConUpdateEvent(int paramInt)
    {
        this.mConState = paramInt;
    }

    int getConState()
    {
        return this.mConState;
    }

    class ConState
    {
        public static final int BALL_SENSOR_FOUND = 101;
        public static final int NET_SENSOR_FOUND = 102;
        public static final int SCANNING_TIME_OUT = 7;
        public static final int SENSOR_CONNECTED = 17;
        public static final int START_CONNECTING = 10;
        public static final int START_SCANNING = 1;

        ConState()
        {
        }
    }
}