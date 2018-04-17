package com.wukong.main.login.configs;

import org.json.JSONException;
import org.json.JSONObject;

public class User
{
    public boolean allow_all_act_msg;
    public boolean allow_all_comment;
    public String avatar_hd;
    public String avatar_large;
    public int bi_followers_count;
    public String block_word;
    public int city;
    public String created_at;
    public String description;
    public String domain;
    public int favourites_count;
    public boolean follow_me;
    public int followers_count;
    public boolean following;
    public int friends_count;
    public String gender;
    public boolean geo_enabled;
    public String id;
    public String idstr;
    public String lang;
    public String location;
    public String mbrank;
    public String mbtype;
    public String name;
    public int online_status;
    public String profile_image_url;
    public String profile_url;
    public int province;
    public String remark;
    public String screen_name;
    public String star;
    public VoicemailContract.Status status;
    public int statuses_count;
    public String url;
    public boolean verified;
    public String verified_reason;
    public int verified_type;
    public String weihao;

    public static User parse(String paramString)
    {
        try
        {
            User localUser = parse(new JSONObject(paramString));
            return localUser;
        }
        catch (JSONException localJSONException)
        {
            localJSONException.printStackTrace();
        }
        return null;
    }

    public static User parse(JSONObject paramJSONObject)
    {
        if (paramJSONObject == null)
            return null;
        User localUser = new User();
        localUser.id = paramJSONObject.optString("id", "");
        localUser.idstr = paramJSONObject.optString("idstr", "");
        localUser.screen_name = paramJSONObject.optString("screen_name", "");
        localUser.name = paramJSONObject.optString("name", "");
        localUser.province = paramJSONObject.optInt("province", -1);
        localUser.city = paramJSONObject.optInt("city", -1);
        localUser.location = paramJSONObject.optString("location", "");
        localUser.description = paramJSONObject.optString("description", "");
        localUser.url = paramJSONObject.optString("url", "");
        localUser.profile_image_url = paramJSONObject.optString("profile_image_url", "");
        localUser.profile_url = paramJSONObject.optString("profile_url", "");
        localUser.domain = paramJSONObject.optString("domain", "");
        localUser.weihao = paramJSONObject.optString("weihao", "");
        localUser.gender = paramJSONObject.optString("gender", "");
        localUser.followers_count = paramJSONObject.optInt("followers_count", 0);
        localUser.friends_count = paramJSONObject.optInt("friends_count", 0);
        localUser.statuses_count = paramJSONObject.optInt("statuses_count", 0);
        localUser.favourites_count = paramJSONObject.optInt("favourites_count", 0);
        localUser.created_at = paramJSONObject.optString("created_at", "");
        localUser.following = paramJSONObject.optBoolean("following", false);
        localUser.allow_all_act_msg = paramJSONObject.optBoolean("allow_all_act_msg", false);
        localUser.geo_enabled = paramJSONObject.optBoolean("geo_enabled", false);
        localUser.verified = paramJSONObject.optBoolean("verified", false);
        localUser.verified_type = paramJSONObject.optInt("verified_type", -1);
        localUser.remark = paramJSONObject.optString("remark", "");
        localUser.allow_all_comment = paramJSONObject.optBoolean("allow_all_comment", true);
        localUser.avatar_large = paramJSONObject.optString("avatar_large", "");
        localUser.avatar_hd = paramJSONObject.optString("avatar_hd", "");
        localUser.verified_reason = paramJSONObject.optString("verified_reason", "");
        localUser.follow_me = paramJSONObject.optBoolean("follow_me", false);
        localUser.online_status = paramJSONObject.optInt("online_status", 0);
        localUser.bi_followers_count = paramJSONObject.optInt("bi_followers_count", 0);
        localUser.lang = paramJSONObject.optString("lang", "");
        localUser.star = paramJSONObject.optString("star", "");
        localUser.mbtype = paramJSONObject.optString("mbtype", "");
        localUser.mbrank = paramJSONObject.optString("mbrank", "");
        localUser.block_word = paramJSONObject.optString("block_word", "");
        return localUser;
    }
}