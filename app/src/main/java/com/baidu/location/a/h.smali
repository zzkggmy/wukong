.class public abstract Lcom/baidu/location/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/h$b;,
        Lcom/baidu/location/a/h$a;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String;


# instance fields
.field public a:Lcom/baidu/location/f/g;

.field public b:Lcom/baidu/location/f/a;

.field final d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/h;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    iput-object v1, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/f/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/h;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/h;->f:Z

    new-instance v0, Lcom/baidu/location/a/h$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/h$a;-><init>(Lcom/baidu/location/a/h;)V

    iput-object v0, p0, Lcom/baidu/location/a/h;->d:Landroid/os/Handler;

    iput-object v1, p0, Lcom/baidu/location/a/h;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/h;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/h;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/h;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/a/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/h;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/h;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/a/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/h;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/f/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/f/a;

    invoke-virtual {v0}, Lcom/baidu/location/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/b;->f()Lcom/baidu/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/f/a;

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    invoke-virtual {v0}, Lcom/baidu/location/f/g;->f()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->m()Lcom/baidu/location/f/g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    :cond_5
    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->h()Landroid/location/Location;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/f/a;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/f/a;

    invoke-virtual {v2}, Lcom/baidu/location/f/a;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    invoke-virtual {v2}, Lcom/baidu/location/f/g;->a()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    if-nez v0, :cond_8

    :goto_1
    return-object v1

    :cond_8
    invoke-virtual {p0}, Lcom/baidu/location/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/a/g;->a()Lcom/baidu/location/a/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/a/g;->d()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imo=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    invoke-virtual {v2}, Lcom/baidu/location/f/g;->a()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    iget-object v2, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/f/a;

    iget-object v3, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/f/g;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/baidu/location/h/j;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/g;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    move-object v0, v1

    goto :goto_0
.end method

.method public abstract a()V
.end method

.method public abstract a(Landroid/os/Message;)V
.end method

.method public b()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/f/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&cn=32"

    :goto_0
    iget-boolean v2, p0, Lcom/baidu/location/a/h;->e:Z

    if-eqz v2, :cond_3

    iput-boolean v6, p0, Lcom/baidu/location/a/h;->e:Z

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "02:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%s&mac=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_1

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cn=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/f/b;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/baidu/location/a/h;->f:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/baidu/location/a/t;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iput-boolean v7, p0, Lcom/baidu/location/a/h;->f:Z

    goto :goto_1
.end method
