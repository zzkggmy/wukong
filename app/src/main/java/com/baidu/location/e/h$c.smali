.class final enum Lcom/baidu/location/e/h$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/location/e/h$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/location/e/h$c;

.field public static final enum b:Lcom/baidu/location/e/h$c;

.field public static final enum c:Lcom/baidu/location/e/h$c;

.field public static final enum d:Lcom/baidu/location/e/h$c;

.field public static final enum e:Lcom/baidu/location/e/h$c;

.field private static final synthetic f:[Lcom/baidu/location/e/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/location/e/h$c;

    const-string v1, "NETWORK_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/baidu/location/e/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/e/h$c;->a:Lcom/baidu/location/e/h$c;

    new-instance v0, Lcom/baidu/location/e/h$c;

    const-string v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v3}, Lcom/baidu/location/e/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/e/h$c;->b:Lcom/baidu/location/e/h$c;

    new-instance v0, Lcom/baidu/location/e/h$c;

    const-string v1, "NETWORK_2G"

    invoke-direct {v0, v1, v4}, Lcom/baidu/location/e/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/e/h$c;->c:Lcom/baidu/location/e/h$c;

    new-instance v0, Lcom/baidu/location/e/h$c;

    const-string v1, "NETWORK_3G"

    invoke-direct {v0, v1, v5}, Lcom/baidu/location/e/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/e/h$c;->d:Lcom/baidu/location/e/h$c;

    new-instance v0, Lcom/baidu/location/e/h$c;

    const-string v1, "NETWORK_4G"

    invoke-direct {v0, v1, v6}, Lcom/baidu/location/e/h$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/e/h$c;->e:Lcom/baidu/location/e/h$c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/location/e/h$c;

    sget-object v1, Lcom/baidu/location/e/h$c;->a:Lcom/baidu/location/e/h$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/location/e/h$c;->b:Lcom/baidu/location/e/h$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/location/e/h$c;->c:Lcom/baidu/location/e/h$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/location/e/h$c;->d:Lcom/baidu/location/e/h$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/location/e/h$c;->e:Lcom/baidu/location/e/h$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/location/e/h$c;->f:[Lcom/baidu/location/e/h$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/location/e/h$c;
    .locals 1

    const-class v0, Lcom/baidu/location/e/h$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/e/h$c;

    return-object v0
.end method

.method public static values()[Lcom/baidu/location/e/h$c;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/h$c;->f:[Lcom/baidu/location/e/h$c;

    invoke-virtual {v0}, [Lcom/baidu/location/e/h$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/location/e/h$c;

    return-object v0
.end method
