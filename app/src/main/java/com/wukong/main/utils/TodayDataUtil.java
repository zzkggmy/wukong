package com.wukong.main.utils;

import android.content.SharedPreferences;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.text.SimpleDateFormat;

public class TodayDataUtil
{
    private static String setKey = getDateKey();
    private SharedPreferences.Editor editor = Commons.preferences.edit();

    private String getCount(String paramString1, String paramString2)
    {
        if (!Commons.strIsNull(paramString1))
            paramString1 = "0";
        if (!Commons.strIsNull(paramString2))
            paramString2 = "0";
        return String.valueOf(Integer.valueOf(paramString1).intValue() + Integer.valueOf(paramString2).intValue());
    }

    public static String getDateKey()
    {
        return new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(System.currentTimeMillis()));
    }

    public static String getHeartData()
    {
        String str = Commons.getPreference(Keys.td_heart);
        if (Commons.strIsNull(str))
            return str;
        return null;
    }

    public static FootPath getPathDate()
    {
        String str = Commons.getPreference(Keys.td_footpath);
        if (Commons.strIsNull(str))
            return (FootPath)JSONObject.parseObject(str.substring(1, -1 + str.length()), FootPath.class);
        return null;
    }

    public static Pendulum getPendulum()
    {
        String str = Commons.getPreference(Keys.td_pendulum);
        if (Commons.strIsNull(str))
            return (Pendulum)JSONObject.parseObject(str.substring(1, -1 + str.length()), Pendulum.class);
        return null;
    }

    public static Rotation getRotation()
    {
        String str = Commons.getPreference(Keys.td_rotation);
        if (Commons.strIsNull(str))
            return (Rotation)JSONObject.parseObject(str.substring(1, -1 + str.length()), Rotation.class);
        return null;
    }

    private void setFootPathDate(FootPath paramFootPath)
    {
        JSONArray localJSONArray = new JSONArray();
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("name", paramFootPath.getName());
        localJSONObject.put("rotateCount", paramFootPath.getRotateCount());
        localJSONObject.put("distance", paramFootPath.getDistance());
        localJSONObject.put("time", paramFootPath.getTime());
        localJSONArray.add(localJSONObject);
        Commons.setPreference(Keys.td_footpath, localJSONArray.toJSONString());
    }

    private void setPendulum(Pendulum paramPendulum)
    {
        JSONArray localJSONArray = new JSONArray();
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("name", paramPendulum.getName());
        localJSONObject.put("gourps", paramPendulum.getGourps());
        localJSONObject.put("nums", paramPendulum.getNums());
        localJSONObject.put("duration", paramPendulum.getDuration());
        localJSONArray.add(localJSONObject);
        Commons.setPreference(Keys.td_pendulum, localJSONArray.toJSONString());
    }

    private void setRotation(Rotation paramRotation)
    {
        JSONArray localJSONArray = new JSONArray();
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("name", paramRotation.getName());
        localJSONObject.put("circles", paramRotation.getCircles());
        localJSONObject.put("duration", paramRotation.getClass());
        localJSONArray.add(localJSONObject);
        Commons.setPreference(Keys.td_rotation, localJSONArray.toJSONString());
    }

    public void FootPathData(Object paramObject)
    {
        String str1 = Commons.getPreference(Keys.td_footpath);
        FootPath localFootPath1 = (FootPath)paramObject;
        if (Commons.strIsNull(str1))
        {
            FootPath localFootPath2 = (FootPath)JSONObject.parseObject(str1.substring(1, -1 + str1.length()), FootPath.class);
            String str2 = getCount(localFootPath1.getRotateCount(), localFootPath2.getRotateCount());
            String str3 = getCount(localFootPath1.getDistance(), localFootPath2.getDistance());
            localFootPath2.setRotateCount(str2);
            localFootPath2.setDistance(str3);
            setFootPathDate(localFootPath2);
            return;
        }
        setFootPathDate(localFootPath1);
    }

    public void PendulumData(Pendulum paramPendulum)
    {
        String str = Commons.getPreference(Keys.td_pendulum);
        if (Commons.strIsNull(str))
        {
            Pendulum localPendulum = (Pendulum)JSONObject.parseObject(str.substring(1, -1 + str.length()), Pendulum.class);
            localPendulum.setGourps(getCount(paramPendulum.getGourps(), localPendulum.getGourps()));
            localPendulum.setNums(getCount(paramPendulum.getNums(), localPendulum.getNums()));
            localPendulum.setDuration(getCount(paramPendulum.getDuration(), localPendulum.getDuration()));
            setPendulum(localPendulum);
            return;
        }
        setPendulum(paramPendulum);
    }

    public void RotationData(Rotation paramRotation)
    {
        String str1 = Commons.getPreference(Keys.td_rotation);
        if (Commons.strIsNull(str1))
        {
            Rotation localRotation = (Rotation)JSONObject.parseObject(str1.substring(1, -1 + str1.length()), Rotation.class);
            String str2 = getCount(localRotation.getCircles(), paramRotation.getCircles());
            String str3 = getCount(localRotation.getDuration(), paramRotation.getDuration());
            localRotation.setCircles(str2);
            localRotation.setDuration(str3);
            setRotation(paramRotation);
            return;
        }
        setRotation(paramRotation);
    }

    public void setHeartData(String paramString1, String paramString2, String paramString3)
    {
        String str1 = Commons.getPreference(Keys.td_heart);
        if (Commons.strIsNull(str1))
        {
            String str3 = str1 + "\n" + paramString1 + "次／分  " + paramString2 + "公里／时   " + paramString3;
            Commons.setPreference(Keys.td_heart, str3);
            return;
        }
        String str2 = "心率：" + paramString1 + "次／分  " + paramString2 + "公里／时   " + paramString3;
        Commons.setPreference(Keys.td_heart, str2);
    }

    public static class FootPath
    {
        private String distance;
        private String name;
        private String rotateCount;
        private String time;

        public String getDistance()
        {
            return this.distance;
        }

        public String getName()
        {
            return this.name;
        }

        public String getRotateCount()
        {
            return this.rotateCount;
        }

        public String getTime()
        {
            return this.time;
        }

        public void setDistance(String paramString)
        {
            this.distance = paramString;
        }

        public void setName(String paramString)
        {
            this.name = paramString;
        }

        public void setRotateCount(String paramString)
        {
            this.rotateCount = paramString;
        }

        public void setTime(String paramString)
        {
            this.time = paramString;
        }
    }

    public static class Keys
    {
        public static String td_footpath = TodayDataUtil.setKey + "td_footpath";
        public static String td_heart = TodayDataUtil.setKey + "td_heart";
        static String td_pendulum = TodayDataUtil.setKey + "td_pendulum";
        static String td_rotation = TodayDataUtil.setKey + "td_rotation";
    }

    public static class Pendulum
    {
        private String duration;
        private String gourps;
        private String name;
        private String nums;

        public String getDuration()
        {
            return this.duration;
        }

        public String getGourps()
        {
            return this.gourps;
        }

        public String getName()
        {
            return this.name;
        }

        public String getNums()
        {
            return this.nums;
        }

        public void setDuration(String paramString)
        {
            this.duration = paramString;
        }

        public void setGourps(String paramString)
        {
            this.gourps = paramString;
        }

        public void setName(String paramString)
        {
            this.name = paramString;
        }

        public void setNums(String paramString)
        {
            this.nums = paramString;
        }
    }

    public static class Rotation
    {
        private String circles;
        private String duration;
        private String name;

        public String getCircles()
        {
            return this.circles;
        }

        public String getDuration()
        {
            return this.duration;
        }

        public String getName()
        {
            return this.name;
        }

        public void setCircles(String paramString)
        {
            this.circles = paramString;
        }

        public void setDuration(String paramString)
        {
            this.duration = paramString;
        }

        public void setName(String paramString)
        {
            this.name = paramString;
        }
    }
}