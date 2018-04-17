.class Lcom/umeng/socialize/shareboard/SnsPlatform$a;
.super Ljava/lang/Object;
.source "SnsPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/shareboard/SnsPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/shareboard/SnsPlatform$a;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/umeng/socialize/shareboard/SnsPlatform$a;->a()V

    .line 59
    return-void
.end method

.method static a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/shareboard/SnsPlatform;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/umeng/socialize/shareboard/SnsPlatform$a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/shareboard/SnsPlatform;

    return-object v0
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-direct {v0}, Lcom/umeng/socialize/shareboard/SnsPlatform;-><init>()V

    .line 68
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 69
    const-string v1, "umeng_socialize_ynote"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mIcon:Ljava/lang/String;

    .line 70
    const-string v1, "umeng_socialize_ynote_gray"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mGrayIcon:Ljava/lang/String;

    .line 71
    const-string v1, "ynote_showword"

    iput-object v1, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/umeng/socialize/shareboard/SnsPlatform$a;->a:Ljava/util/Map;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YNOTE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
