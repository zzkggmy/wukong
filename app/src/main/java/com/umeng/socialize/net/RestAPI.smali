.class public Lcom/umeng/socialize/net/RestAPI;
.super Ljava/lang/Object;
.source "RestAPI.java"


# static fields
.field private static a:Lcom/umeng/socialize/net/base/SocializeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    sput-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteOAuth(Lcom/umeng/socialize/net/ShareDeleteOauthRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    return-object v0
.end method

.method public static doFollow(Lcom/umeng/socialize/net/ShareMultiFollowRequest;)Lcom/umeng/socialize/net/ShareMultiFollowResponse;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/ShareMultiFollowResponse;

    return-object v0
.end method

.method public static doShare(Lcom/umeng/socialize/net/ShareMultiReqeust;)Lcom/umeng/socialize/net/ShareMultiResponse;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/ShareMultiResponse;

    return-object v0
.end method

.method public static doShare(Lcom/umeng/socialize/net/SharePostRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    return-object v0
.end method

.method public static getUserInfo(Lcom/umeng/socialize/net/UserInfoRequest;)Lcom/umeng/socialize/net/UserInfoResponse;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/UserInfoResponse;

    return-object v0
.end method

.method public static queryExpire(Lcom/umeng/socialize/net/ExpiresInRequest;)Lcom/umeng/socialize/net/ExpiresInResponse;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/ExpiresInResponse;

    return-object v0
.end method

.method public static queryFriendsList(Lcom/umeng/socialize/net/ShareFriendsRequest;)Lcom/umeng/socialize/net/ShareFriendsResponse;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/ShareFriendsResponse;

    return-object v0
.end method

.method public static queryPlatformKey(Lcom/umeng/socialize/net/GetPlatformKeyRequest;)Lcom/umeng/socialize/net/GetPlatformKeyResponse;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/GetPlatformKeyResponse;

    return-object v0
.end method

.method public static queryShareId(Lcom/umeng/socialize/net/ActionBarRequest;)Lcom/umeng/socialize/net/ActionBarResponse;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/ActionBarResponse;

    return-object v0
.end method

.method public static updatePlatformKey(Lcom/umeng/socialize/net/UpdatePlatformKeyRequest;)Lcom/umeng/socialize/net/UpdatePlatformKeyResponse;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/UpdatePlatformKeyResponse;

    return-object v0
.end method

.method public static uploadImage(Lcom/umeng/socialize/net/UploadImageRequest;)Lcom/umeng/socialize/net/UploadImageResponse;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/UploadImageResponse;

    return-object v0
.end method

.method public static uploadPlatformToken(Lcom/umeng/socialize/net/PlatformTokenUploadReq;)Lcom/umeng/socialize/net/PlatformTokenUploadResponse;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/umeng/socialize/net/RestAPI;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/PlatformTokenUploadResponse;

    return-object v0
.end method
