.class public enum Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;
.super Ljava/lang/Enum;
.source "SocializeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/net/base/SocializeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400c
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

.field public static final enum GET:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

.field public static final enum POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod$1;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->GET:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    .line 61
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod$2;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    sget-object v1, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->GET:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->POST:Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->$VALUES:[Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/net/base/SocializeRequest$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->$VALUES:[Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    invoke-virtual {v0}, [Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/net/base/SocializeRequest$RequestMethod;

    return-object v0
.end method
