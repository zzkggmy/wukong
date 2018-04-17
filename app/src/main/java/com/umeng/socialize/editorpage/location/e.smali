.class Lcom/umeng/socialize/editorpage/location/e;
.super Ljava/lang/Object;
.source "SocializeLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:Landroid/location/LocationListener;

.field final synthetic e:Lcom/umeng/socialize/editorpage/location/d;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/editorpage/location/d;Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/location/e;->e:Lcom/umeng/socialize/editorpage/location/d;

    iput-object p2, p0, Lcom/umeng/socialize/editorpage/location/e;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/umeng/socialize/editorpage/location/e;->b:J

    iput p5, p0, Lcom/umeng/socialize/editorpage/location/e;->c:F

    iput-object p6, p0, Lcom/umeng/socialize/editorpage/location/e;->d:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/e;->e:Lcom/umeng/socialize/editorpage/location/d;

    iget-object v0, v0, Lcom/umeng/socialize/editorpage/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/location/e;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/umeng/socialize/editorpage/location/e;->b:J

    iget v4, p0, Lcom/umeng/socialize/editorpage/location/e;->c:F

    iget-object v5, p0, Lcom/umeng/socialize/editorpage/location/e;->d:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 52
    return-void
.end method
