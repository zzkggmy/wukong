.class public final Lcom/baidu/location/h/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static volatile b:Lcom/baidu/location/h/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/i;

    invoke-static {}, Lcom/baidu/location/h/j;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/h/i;->a:Ljava/lang/String;

    return-void
.end method
