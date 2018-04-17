.class final enum Lcom/baidu/tts/chainofresponsibility/logger/d$b;
.super Ljava/lang/Enum;
.source "LoggerChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/chainofresponsibility/logger/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/chainofresponsibility/logger/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

.field public static final enum b:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

.field private static final synthetic c:[Lcom/baidu/tts/chainofresponsibility/logger/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    const-string v1, "DEVELOP"

    invoke-direct {v0, v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->a:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    new-instance v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/tts/chainofresponsibility/logger/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->a:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->b:Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->c:[Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/chainofresponsibility/logger/d$b;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/chainofresponsibility/logger/d$b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/d$b;->c:[Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/chainofresponsibility/logger/d$b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
