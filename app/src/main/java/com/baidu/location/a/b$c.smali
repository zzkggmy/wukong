.class Lcom/baidu/location/a/b$c;
.super Lcom/baidu/location/h/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/a/b;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/a/b$c;->b:Lcom/baidu/location/a/b;

    invoke-direct {p0}, Lcom/baidu/location/h/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/b$c;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/b$c;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/h/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/b$c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/b$c;->b:Lcom/baidu/location/a/b;

    invoke-static {v0}, Lcom/baidu/location/a/b;->a(Lcom/baidu/location/a/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/b$c;->b:Lcom/baidu/location/a/b;

    invoke-static {v0}, Lcom/baidu/location/a/b;->b(Lcom/baidu/location/a/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ki=%s&sn=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/a/b$c;->b:Lcom/baidu/location/a/b;

    invoke-static {v4}, Lcom/baidu/location/a/b;->a(Lcom/baidu/location/a/b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/baidu/location/a/b$c;->b:Lcom/baidu/location/a/b;

    invoke-static {v4}, Lcom/baidu/location/a/b;->b(Lcom/baidu/location/a/b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/b$c;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/b$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeTp4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/a/b$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/b$c;->k:Ljava/util/Map;

    const-string v2, "bloc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/b$c;->k:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/a/b$c;->e()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/b$c;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/b$c;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, v1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/a/b$c;->b:Lcom/baidu/location/a/b;

    invoke-static {v1}, Lcom/baidu/location/a/b;->c(Lcom/baidu/location/a/b;)Lcom/baidu/location/LocationClientOption;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/a/b$c;->b:Lcom/baidu/location/a/b;

    invoke-static {v1}, Lcom/baidu/location/a/b;->d(Lcom/baidu/location/a/b;)Lcom/baidu/location/a/b$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/location/a/b$b;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/a/b$c;->k:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/b$c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
