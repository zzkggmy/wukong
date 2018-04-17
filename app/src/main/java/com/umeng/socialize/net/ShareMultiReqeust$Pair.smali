.class Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;
.super Ljava/lang/Object;
.source "ShareMultiReqeust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/net/ShareMultiReqeust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pair"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;->a:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/umeng/socialize/net/ShareMultiReqeust$Pair;->b:Ljava/lang/String;

    .line 176
    return-void
.end method
