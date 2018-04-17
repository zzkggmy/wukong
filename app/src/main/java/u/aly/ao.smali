.class public final enum Lu/aly/ao;
.super Ljava/lang/Enum;
.source "AccessType.java"

# interfaces
.implements Lu/aly/cd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ao;",
        ">;",
        "Lu/aly/cd;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ao;

.field public static final enum b:Lu/aly/ao;

.field public static final enum c:Lu/aly/ao;

.field public static final enum d:Lu/aly/ao;

.field private static final synthetic f:[Lu/aly/ao;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lu/aly/ao;

    const-string v1, "ACCESS_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ao;->a:Lu/aly/ao;

    new-instance v0, Lu/aly/ao;

    const-string v1, "ACCESS_TYPE_2G_3G"

    invoke-direct {v0, v1, v3, v3}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ao;->b:Lu/aly/ao;

    new-instance v0, Lu/aly/ao;

    const-string v1, "ACCESS_TYPE_WIFI"

    invoke-direct {v0, v1, v4, v4}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ao;->c:Lu/aly/ao;

    new-instance v0, Lu/aly/ao;

    const-string v1, "ACCESS_TYPE_ETHERNET"

    invoke-direct {v0, v1, v5, v5}, Lu/aly/ao;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/ao;->d:Lu/aly/ao;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lu/aly/ao;

    sget-object v1, Lu/aly/ao;->a:Lu/aly/ao;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/ao;->b:Lu/aly/ao;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ao;->c:Lu/aly/ao;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ao;->d:Lu/aly/ao;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/ao;->f:[Lu/aly/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lu/aly/ao;->e:I

    .line 16
    return-void
.end method

.method public static a(I)Lu/aly/ao;
    .locals 1

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    sget-object v0, Lu/aly/ao;->a:Lu/aly/ao;

    goto :goto_0

    .line 35
    :pswitch_1
    sget-object v0, Lu/aly/ao;->b:Lu/aly/ao;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lu/aly/ao;->c:Lu/aly/ao;

    goto :goto_0

    .line 39
    :pswitch_3
    sget-object v0, Lu/aly/ao;->d:Lu/aly/ao;

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ao;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lu/aly/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ao;

    return-object v0
.end method

.method public static values()[Lu/aly/ao;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lu/aly/ao;->f:[Lu/aly/ao;

    invoke-virtual {v0}, [Lu/aly/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ao;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lu/aly/ao;->e:I

    return v0
.end method
