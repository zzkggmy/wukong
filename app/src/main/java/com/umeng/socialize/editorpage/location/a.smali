.class public Lcom/umeng/socialize/editorpage/location/a;
.super Ljava/lang/Object;
.source "DefaultLocationProvider.java"

# interfaces
.implements Lcom/umeng/socialize/editorpage/location/SocializeLocationProvider;


# static fields
.field private static final a:Ljava/lang/String; = "DefaultLocationProvider"


# instance fields
.field private b:Landroid/location/Location;

.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/socialize/editorpage/location/d;

.field private e:Lcom/umeng/socialize/editorpage/location/c;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->e:Lcom/umeng/socialize/editorpage/location/c;

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 10

    .prologue
    .line 59
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    .line 60
    invoke-virtual {v2, p2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 62
    iget-object v3, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/umeng/socialize/editorpage/location/d;->a(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    iput-object v2, p0, Lcom/umeng/socialize/editorpage/location/a;->f:Ljava/lang/String;

    .line 67
    :cond_0
    const-string v2, "DefaultLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get location from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/editorpage/location/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/umeng/socialize/editorpage/location/a;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    iget-object v3, p0, Lcom/umeng/socialize/editorpage/location/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/editorpage/location/d;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    iput-object v2, p0, Lcom/umeng/socialize/editorpage/location/a;->b:Landroid/location/Location;

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    iget-object v3, p0, Lcom/umeng/socialize/editorpage/location/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/editorpage/location/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/socialize/editorpage/location/a;->e:Lcom/umeng/socialize/editorpage/location/c;

    if-eqz v2, :cond_1

    .line 76
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 77
    iget-object v3, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    iget-object v5, p0, Lcom/umeng/socialize/editorpage/location/a;->f:Ljava/lang/String;

    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/umeng/socialize/editorpage/location/a;->e:Lcom/umeng/socialize/editorpage/location/c;

    invoke-virtual/range {v3 .. v9}, Lcom/umeng/socialize/editorpage/location/d;->a(Landroid/app/Activity;Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->e:Lcom/umeng/socialize/editorpage/location/c;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/location/a;->e:Lcom/umeng/socialize/editorpage/location/c;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/editorpage/location/d;->a(Landroid/location/LocationListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/location/a;->c:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/umeng/socialize/editorpage/location/c;

    invoke-direct {v0}, Lcom/umeng/socialize/editorpage/location/c;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->e:Lcom/umeng/socialize/editorpage/location/c;

    .line 34
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/location/a;->b()Landroid/location/Location;

    .line 35
    return-void
.end method

.method protected a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/location/a;->b:Landroid/location/Location;

    .line 96
    return-void
.end method

.method public a(Lcom/umeng/socialize/editorpage/location/d;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/location/a;->f:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/umeng/socialize/editorpage/location/a;->a(Landroid/content/Context;I)V

    .line 55
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->b:Landroid/location/Location;

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->c:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/umeng/socialize/editorpage/location/a;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected c()Lcom/umeng/socialize/editorpage/location/d;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/a;->d:Lcom/umeng/socialize/editorpage/location/d;

    return-object v0
.end method
