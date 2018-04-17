.class public Lcom/baidu/tts/b/b/b/b$a;
.super Lcom/baidu/tts/k/c;
.source "AudioTrackPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/b/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/k/c",
        "<",
        "Lcom/baidu/tts/b/b/b/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/tts/e/k;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/baidu/tts/k/c;-><init>()V

    .line 208
    sget-object v0, Lcom/baidu/tts/e/k;->b:Lcom/baidu/tts/e/k;

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b$a;->a:Lcom/baidu/tts/e/k;

    .line 209
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->b:I

    .line 210
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->c:I

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/tts/b/b/b/b$a;->d:I

    .line 203
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b$a;->a:Lcom/baidu/tts/e/k;

    invoke-virtual {v0}, Lcom/baidu/tts/e/k;->a()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/baidu/tts/b/b/b/b$a;->d:I

    return v0
.end method
