.class public Lcom/umeng/socialize/editorpage/location/d;
.super Ljava/lang/Object;
.source "SocializeLocationManager.java"


# instance fields
.field a:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 9

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lcom/umeng/socialize/editorpage/location/e;

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/umeng/socialize/editorpage/location/e;-><init>(Lcom/umeng/socialize/editorpage/location/d;Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 28
    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    .line 31
    :cond_1
    return-void
.end method

.method public a(Landroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 61
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
