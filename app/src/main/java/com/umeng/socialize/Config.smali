.class public Lcom/umeng/socialize/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static Descriptor:Ljava/lang/String;

.field public static EntityKey:Ljava/lang/String;

.field public static EntityName:Ljava/lang/String;

.field public static IsToastTip:Z

.field public static LinkedInProfileScope:I

.field public static LinkedInShareCode:I

.field public static OpenEditor:Z

.field public static QQAPPNAME:Ljava/lang/String;

.field public static QQWITHQZONE:I

.field public static REDIRECT_URL:Ljava/lang/String;

.field public static SDK_VERSION:Ljava/lang/String;

.field public static SessionId:Ljava/lang/String;

.field public static ShareLocation:Z

.field public static UID:Ljava/lang/String;

.field public static WBBYQQ:Z

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field public static dialog:Landroid/app/Dialog;

.field public static isIntentShareFB:Z

.field public static isShowDialog:Z

.field public static mEncrypt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 13
    sput-boolean v1, Lcom/umeng/socialize/Config;->OpenEditor:Z

    .line 17
    sput-boolean v1, Lcom/umeng/socialize/Config;->ShareLocation:Z

    .line 19
    sput-object v2, Lcom/umeng/socialize/Config;->UID:Ljava/lang/String;

    .line 21
    sput-object v2, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    .line 23
    sput-object v2, Lcom/umeng/socialize/Config;->EntityName:Ljava/lang/String;

    .line 25
    sput-boolean v1, Lcom/umeng/socialize/Config;->WBBYQQ:Z

    .line 29
    const-string v0, "com.umeng.share"

    sput-object v0, Lcom/umeng/socialize/Config;->Descriptor:Ljava/lang/String;

    .line 30
    const-string v0, "5.0.3"

    sput-object v0, Lcom/umeng/socialize/Config;->SDK_VERSION:Ljava/lang/String;

    .line 31
    sput-object v2, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    .line 32
    sput v3, Lcom/umeng/socialize/Config;->QQWITHQZONE:I

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/Config;->QQAPPNAME:Ljava/lang/String;

    .line 34
    sput-boolean v1, Lcom/umeng/socialize/Config;->mEncrypt:Z

    .line 35
    sput-object v2, Lcom/umeng/socialize/Config;->dialog:Landroid/app/Dialog;

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/Config;->a:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/Config;->b:Ljava/lang/String;

    .line 45
    const-string v0, "http://sns.whalecloud.com"

    sput-object v0, Lcom/umeng/socialize/Config;->REDIRECT_URL:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/umeng/socialize/Config;->IsToastTip:Z

    .line 75
    sput v3, Lcom/umeng/socialize/Config;->LinkedInProfileScope:I

    .line 79
    sput v3, Lcom/umeng/socialize/Config;->LinkedInShareCode:I

    .line 81
    sput-boolean v1, Lcom/umeng/socialize/Config;->isShowDialog:Z

    .line 83
    sput-boolean v3, Lcom/umeng/socialize/Config;->isIntentShareFB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapterSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/umeng/socialize/Config;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getAdapterSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/umeng/socialize/Config;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static setAdapterSDKInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    sput-object p0, Lcom/umeng/socialize/Config;->a:Ljava/lang/String;

    .line 69
    sput-object p1, Lcom/umeng/socialize/Config;->b:Ljava/lang/String;

    .line 70
    return-void
.end method
