.class public final Lcom/baidu/platform/comapi/map/C;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/baidu/platform/comapi/map/E;

.field b:Z

.field c:I

.field d:Z

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/platform/comapi/map/E;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/E;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/C;->a:Lcom/baidu/platform/comapi/map/E;

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/C;->b:Z

    iput v1, p0, Lcom/baidu/platform/comapi/map/C;->c:I

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/C;->d:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/C;->e:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/C;->f:Z

    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/C;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/platform/comapi/map/C;
    .locals 0

    iput p1, p0, Lcom/baidu/platform/comapi/map/C;->c:I

    return-object p0
.end method

.method public a(Lcom/baidu/platform/comapi/map/E;)Lcom/baidu/platform/comapi/map/C;
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/C;->a:Lcom/baidu/platform/comapi/map/E;

    return-object p0
.end method

.method public a(Z)Lcom/baidu/platform/comapi/map/C;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/C;->b:Z

    return-object p0
.end method

.method public b(Z)Lcom/baidu/platform/comapi/map/C;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/C;->d:Z

    return-object p0
.end method

.method public c(Z)Lcom/baidu/platform/comapi/map/C;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/C;->e:Z

    return-object p0
.end method

.method public d(Z)Lcom/baidu/platform/comapi/map/C;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/C;->f:Z

    return-object p0
.end method

.method public e(Z)Lcom/baidu/platform/comapi/map/C;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/C;->g:Z

    return-object p0
.end method
