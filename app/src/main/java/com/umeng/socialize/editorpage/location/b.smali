.class public Lcom/umeng/socialize/editorpage/location/b;
.super Landroid/os/AsyncTask;
.source "GetLocationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "Location"


# instance fields
.field private a:Lcom/umeng/socialize/editorpage/location/a;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/editorpage/location/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/location/b;->a:Lcom/umeng/socialize/editorpage/location/a;

    .line 24
    return-void
.end method

.method private a()Landroid/location/Location;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/b;->a:Lcom/umeng/socialize/editorpage/location/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/editorpage/location/a;->b()Landroid/location/Location;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    const-string v0, "Location"

    const-string v1, "Fetch gps info from default failed,then fetch form network.."

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/b;->a:Lcom/umeng/socialize/editorpage/location/a;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/editorpage/location/a;->a(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/location/b;->a:Lcom/umeng/socialize/editorpage/location/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/editorpage/location/a;->b()Landroid/location/Location;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/location/b;->a:Lcom/umeng/socialize/editorpage/location/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/editorpage/location/a;->a(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v1, 0x14

    if-ge v2, v1, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/location/b;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    :goto_1
    return-object v0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/location/b;->a()Landroid/location/Location;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 36
    goto :goto_1

    .line 39
    :cond_2
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/editorpage/location/b;->a([Ljava/lang/Void;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
