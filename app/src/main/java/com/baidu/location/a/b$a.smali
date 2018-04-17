.class Lcom/baidu/location/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:C

.field final synthetic h:Lcom/baidu/location/a/b;


# direct methods
.method private constructor <init>(Lcom/baidu/location/a/b;)V
    .locals 2

    const v1, 0x7fffffff

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/baidu/location/a/b$a;->h:Lcom/baidu/location/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/location/a/b$a;->a:I

    iput v0, p0, Lcom/baidu/location/a/b$a;->b:I

    iput v0, p0, Lcom/baidu/location/a/b$a;->c:I

    iput v0, p0, Lcom/baidu/location/a/b$a;->d:I

    iput v1, p0, Lcom/baidu/location/a/b$a;->e:I

    iput v1, p0, Lcom/baidu/location/a/b$a;->f:I

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/baidu/location/a/b$a;->g:C

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/a/b;Lcom/baidu/location/a/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/b$a;-><init>(Lcom/baidu/location/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/b$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/a/b$a;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/a/b$a;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/a/b$a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/baidu/location/a/b$a;->c:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/baidu/location/a/b$a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/baidu/location/a/b$a;->c:I

    const/16 v1, 0x1cc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/a/b$a;->c:I

    const/16 v1, 0x1c6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/a/b$a;->c:I

    const/16 v1, 0x1c7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/a/b$a;->c:I

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 12

    const v11, 0x7fffffff

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0x40cc200000000000L    # 14400.0

    invoke-direct {p0}, Lcom/baidu/location/a/b$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&nw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lcom/baidu/location/a/b$a;->g:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cl=%d|%d|%d|%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/location/a/b$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, p0, Lcom/baidu/location/a/b$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, p0, Lcom/baidu/location/a/b$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x3

    iget v5, p0, Lcom/baidu/location/a/b$a;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/a/b$a;->e:I

    if-ge v1, v11, :cond_1

    iget v1, p0, Lcom/baidu/location/a/b$a;->f:I

    if-ge v1, v11, :cond_1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cdmall=%.6f|%.6f"

    new-array v3, v10, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/location/a/b$a;->f:I

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    iget v4, p0, Lcom/baidu/location/a/b$a;->e:I

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/baidu/location/a/b$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lcom/baidu/location/a/b$a;->b:I

    add-int/lit8 v1, v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/a/b$a;->a:I

    add-int/lit8 v1, v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/a/b$a;->d:I

    add-int/lit8 v1, v1, 0x36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/a/b$a;->c:I

    add-int/lit16 v1, v1, 0xcb

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
