.class Lcom/baidu/location/e/d$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/e/d;

.field private c:Ljava/lang/Long;

.field private d:Lcom/baidu/location/BDLocation;

.field private e:Lcom/baidu/location/BDLocation;

.field private f:Lcom/baidu/location/BDLocation;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/baidu/location/e/d;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/baidu/location/BDLocation;",
            "Lcom/baidu/location/BDLocation;",
            "Lcom/baidu/location/BDLocation;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/e/d$b;->b:Lcom/baidu/location/e/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/e/d$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/location/e/d$b;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/baidu/location/e/d$b;->d:Lcom/baidu/location/BDLocation;

    iput-object p5, p0, Lcom/baidu/location/e/d$b;->e:Lcom/baidu/location/BDLocation;

    iput-object p6, p0, Lcom/baidu/location/e/d$b;->f:Lcom/baidu/location/BDLocation;

    iput-object p7, p0, Lcom/baidu/location/e/d$b;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/location/e/d$b;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/e/d;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/baidu/location/e/e;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/baidu/location/e/d$b;-><init>(Lcom/baidu/location/e/d;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/e/d$b;->b:Lcom/baidu/location/e/d;

    iget-object v1, p0, Lcom/baidu/location/e/d$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/e/d$b;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/baidu/location/e/d$b;->d:Lcom/baidu/location/BDLocation;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/location/e/d;->a(Lcom/baidu/location/e/d;Ljava/lang/String;Ljava/lang/Long;Lcom/baidu/location/BDLocation;)V

    iget-object v0, p0, Lcom/baidu/location/e/d$b;->b:Lcom/baidu/location/e/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/e/d;->a(Lcom/baidu/location/e/d;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/e/d$b;->b:Lcom/baidu/location/e/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/e/d;->b(Lcom/baidu/location/e/d;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/e/d$b;->b:Lcom/baidu/location/e/d;

    iget-object v1, p0, Lcom/baidu/location/e/d$b;->h:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/baidu/location/e/d;->a(Lcom/baidu/location/e/d;Ljava/util/LinkedHashMap;)V

    iget-object v0, p0, Lcom/baidu/location/e/d$b;->b:Lcom/baidu/location/e/d;

    iget-object v1, p0, Lcom/baidu/location/e/d$b;->f:Lcom/baidu/location/BDLocation;

    iget-object v2, p0, Lcom/baidu/location/e/d$b;->d:Lcom/baidu/location/BDLocation;

    iget-object v3, p0, Lcom/baidu/location/e/d$b;->e:Lcom/baidu/location/BDLocation;

    iget-object v4, p0, Lcom/baidu/location/e/d$b;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/location/e/d$b;->c:Ljava/lang/Long;

    invoke-static/range {v0 .. v5}, Lcom/baidu/location/e/d;->a(Lcom/baidu/location/e/d;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/baidu/location/e/d$b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/d$b;->b:Lcom/baidu/location/e/d;

    invoke-static {v0}, Lcom/baidu/location/e/d;->a(Lcom/baidu/location/e/d;)Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->j()Lcom/baidu/location/e/k;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/d$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/e/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/baidu/location/e/d$b;->h:Ljava/util/LinkedHashMap;

    iput-object v6, p0, Lcom/baidu/location/e/d$b;->a:Ljava/lang/String;

    iput-object v6, p0, Lcom/baidu/location/e/d$b;->g:Ljava/lang/String;

    iput-object v6, p0, Lcom/baidu/location/e/d$b;->c:Ljava/lang/Long;

    iput-object v6, p0, Lcom/baidu/location/e/d$b;->d:Lcom/baidu/location/BDLocation;

    iput-object v6, p0, Lcom/baidu/location/e/d$b;->e:Lcom/baidu/location/BDLocation;

    iput-object v6, p0, Lcom/baidu/location/e/d$b;->f:Lcom/baidu/location/BDLocation;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
