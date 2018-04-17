.class public Lcom/umeng/socialize/a;
.super Ljava/lang/Object;
.source "PlatformPreferences.java"


# static fields
.field private static final a:Ljava/lang/String; = ".umsocial"


# instance fields
.field private b:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/a;->b:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/socialize/PlatformConfig$Platform;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
