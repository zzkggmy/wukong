package com.wukong.services.gym.usermanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.UUID;

public class Users
{
    private static final String AVATAR_URL = "AVATAR_URL";
    private static final String BASKETBALL_COURT_ROLE = "BASKETBALL_COURT_ROLE";
    private static final String BIRTH_DATE = "BIRTH_DATE";
    private static final String BIRTH_MONTH = "BIRTH_MONTH";
    private static final String BIRTH_YEAR = "BIRTH_YEAR";
    private static final String[] CLIENT_ENTRIES = { "USER_CLIENT_IDS0", "USER_CLIENT_IDS1", "USER_CLIENT_IDS2", "USER_CLIENT_IDS3", "USER_CLIENT_IDS4" };
    private static final String DEFAULT_BASKETBALL_DEVICE_ADDRESS = "DEFAULT_BASKETBALL_DEVICE_ADDRESS";
    private static final String DEFAULT_BASKET_NET_DEVICE_ADDRESS = "DEFAULT_BASKET_NET_DEVICE_ADDRESS";
    private static final String DEFAULT_RUN_DEVICE_ADDRESS = "DEFAULT_WRIST_BAND_DEVICE_ADDRESS";
    private static final String DEFAULT_WRIST_BAND_DEVICE_ADDRESS = "DEFAULT_WRIST_BAND_DEVICE_ADDRESS";
    private static final double GROUND_SHOT_HEIGHT_SCALER = 1.23D;
    private static final String HEIGHT = "HEIGHT";
    private static final String LAST_SELECTED_USER_INDEX = "LAST_SELECTED_USER_INDEX";
    private static final int MaxUserInfosSize = 5;
    private static Users S_UsersSingleton = null;
    private static final String TAG = Users.class.getSimpleName();
    public static final String UNINITIALIZED = "UNINITIALIZED";
    private static final String USER_CLIENT_IDS = "USER_CLIENT_IDS";
    private static final String USER_NAME = "USER_NAME";
    private static final String USER_SERVER_ID = "USER_SERVER_ID";
    private static final String WEIGHT = "WEIGHT";
    private static boolean mIsUsersInit = false;
    ListIterator<UserInfo> mCurrentUserIterator = this.mUserInfos.listIterator();
    private SharedPreferences.Editor mEditor;
    private SharedPreferences mSharedPreferences;
    private ArrayList<UserInfo> mUserInfos = new ArrayList();

    private Users(Context paramContext)
    {
        this.mSharedPreferences = paramContext.getSharedPreferences("USER_CLIENT_IDS", 0);
        this.mEditor = this.mSharedPreferences.edit();
        this.mEditor.clear();
        for (int i = 0; i < 5; i++)
        {
            String str = this.mSharedPreferences.getString(CLIENT_ENTRIES[i], "UNINITIALIZED");
            if (str.equals("UNINITIALIZED"))
            {
                str = UUID.randomUUID().toString();
                this.mEditor.putString(CLIENT_ENTRIES[i], str);
                this.mEditor.apply();
            }
            this.mUserInfos.add(new UserInfo(paramContext, str));
        }
    }

    public static Users getUsers()
    {
        return S_UsersSingleton;
    }

    public static void initUsers(Context paramContext)
    {
        if (S_UsersSingleton == null)
            S_UsersSingleton = new Users(paramContext);
    }

    private void loadLocalUsers()
    {
    }

    private boolean setCurrentUser(int paramInt)
    {
        if ((paramInt < 0) || (paramInt >= this.mUserInfos.size()))
            return false;
        setLastSelectedUser(paramInt);
        return true;
    }

    private void setLastSelectedUser(int paramInt)
    {
        this.mEditor.putInt("LAST_SELECTED_USER_INDEX", paramInt);
        this.mEditor.apply();
    }

    public UserInfo getCurrentUser()
    {
        return getLastSelectedUser();
    }

    public int getCurrentUserIndex()
    {
        return getLastSelectedUserIndex();
    }

    public String getDefaultBasketNetDeviceAddress()
    {
        return this.mSharedPreferences.getString("DEFAULT_BASKET_NET_DEVICE_ADDRESS", "UNINITIALIZED");
    }

    public String getDefaultBasketballDeviceAddress()
    {
        return this.mSharedPreferences.getString("DEFAULT_BASKETBALL_DEVICE_ADDRESS", "UNINITIALIZED");
    }

    public String getDefaultWristBandDeviceAddress()
    {
        return this.mSharedPreferences.getString("DEFAULT_BASKETBALL_DEVICE_ADDRESS", "UNINITIALIZED");
    }

    public UserInfo getLastSelectedUser()
    {
        return (UserInfo)this.mUserInfos.get(this.mSharedPreferences.getInt("LAST_SELECTED_USER_INDEX", 0));
    }

    public int getLastSelectedUserIndex()
    {
        return this.mSharedPreferences.getInt("LAST_SELECTED_USER_INDEX", 0);
    }

    public UserInfo getUserAt(int paramInt)
    {
        if (setCurrentUser(paramInt))
            return getCurrentUser();
        return null;
    }

    public void saveLocalUsers()
    {
    }

    public void setDefaultBasketNetDeviceAddress(String paramString)
    {
        this.mEditor.putString("DEFAULT_BASKET_NET_DEVICE_ADDRESS", paramString);
        this.mEditor.apply();
    }

    public void setDefaultBasketballDeviceAddress(String paramString)
    {
        this.mEditor.putString("DEFAULT_BASKETBALL_DEVICE_ADDRESS", paramString);
        this.mEditor.apply();
    }

    public void setDefaultRunDeviceAddress(String paramString)
    {
        this.mEditor.putString("DEFAULT_WRIST_BAND_DEVICE_ADDRESS", paramString);
        this.mEditor.apply();
    }

    public void setDefaultWristBandDeviceAddress(String paramString)
    {
        this.mEditor.putString("DEFAULT_WRIST_BAND_DEVICE_ADDRESS", paramString);
        this.mEditor.apply();
    }

    public class UserInfo
    {
        private SharedPreferences.Editor mEditor;
        private String mPwd;
        private SharedPreferences mSharedPreferences;
        private String mUserClientID;

        public UserInfo(Context paramString, String arg3)
        {
            String str;
            setUserClientID(paramString, str);
        }

        private String getPwd()
        {
            return this.mPwd;
        }

        private void setUserServerID(String paramString)
        {
            this.mEditor.putString("USER_SERVER_ID", paramString);
            this.mEditor.apply();
        }

        public double getGroundShotHeight_CM()
        {
            return 1.23D * getHeight_CM();
        }

        public double getGroundShotHeight_M()
        {
            return getGroundShotHeight_CM() / 100.0D;
        }

        public int getHeight_CM()
        {
            return this.mSharedPreferences.getInt("HEIGHT", 170);
        }

        public String getUserClientID()
        {
            return this.mUserClientID;
        }

        public String getUserName()
        {
            return this.mSharedPreferences.getString("USER_NAME", "UNINITIALIZED");
        }

        public String getUserServerID()
        {
            return this.mSharedPreferences.getString("USER_SERVER_ID", "UNINITIALIZED");
        }

        public void setHeight_CM(int paramInt)
        {
            this.mEditor.putInt("HEIGHT", paramInt);
            this.mEditor.apply();
        }

        public void setPwd(String paramString)
        {
            this.mPwd = paramString;
        }

        public void setUserClientID(Context paramContext, String paramString)
        {
            this.mUserClientID = paramString;
            this.mSharedPreferences = paramContext.getSharedPreferences(this.mUserClientID, 0);
            this.mEditor = this.mSharedPreferences.edit();
            this.mEditor.apply();
        }

        public void setUserName(String paramString)
        {
            this.mEditor.putString("USER_NAME", paramString);
            this.mEditor.apply();
        }
    }
}