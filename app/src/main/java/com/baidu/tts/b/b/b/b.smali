.class public Lcom/baidu/tts/b/b/b/b;
.super Lcom/baidu/tts/b/b/b/a;
.source "AudioTrackPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/b/b/b/b$a;
    }
.end annotation


# instance fields
.field private b:Landroid/media/AudioTrack;

.field private c:Lcom/baidu/tts/b/b/b/b$a;

.field private d:Lcom/baidu/tts/h/a/b;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/a;-><init>()V

    .line 24
    new-instance v0, Lcom/baidu/tts/h/a/b;

    invoke-direct {v0}, Lcom/baidu/tts/h/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Lcom/baidu/tts/h/a/b;

    .line 21
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/baidu/tts/b/b/b/b;->e:I

    if-le p1, v0, :cond_0

    .line 180
    iput p1, p0, Lcom/baidu/tts/b/b/b/b;->e:I

    .line 182
    :cond_0
    iget v0, p0, Lcom/baidu/tts/b/b/b/b;->e:I

    return v0
.end method

.method private b(Lcom/baidu/tts/k/h;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Lcom/baidu/tts/h/a/b;

    invoke-direct {p0}, Lcom/baidu/tts/b/b/b/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/h/a/b;->a(I)V

    .line 168
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Lcom/baidu/tts/h/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/h/a/b;->a()V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/tts/b/b/b/b;->e:I

    .line 170
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->d(Lcom/baidu/tts/k/h;)V

    .line 171
    return-void
.end method

.method private c(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Lcom/baidu/tts/h/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/h/a/b;->b()V

    .line 175
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->f(Lcom/baidu/tts/k/h;)V

    .line 176
    return-void
.end method

.method private d(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->a(Lcom/baidu/tts/k/h;)V

    .line 189
    :cond_0
    return-void
.end method

.method private e()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->f()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v1

    .line 162
    mul-int/lit8 v1, v1, 0x2

    div-int v0, v1, v0

    .line 163
    return v0
.end method

.method private e(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->b(Lcom/baidu/tts/k/h;)V

    .line 195
    :cond_0
    return-void
.end method

.method private f(Lcom/baidu/tts/k/h;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->c(Lcom/baidu/tts/k/h;)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 7

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/baidu/tts/b/b/b/b$a;

    invoke-direct {v0}, Lcom/baidu/tts/b/b/b/b$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->a()I

    move-result v2

    .line 55
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->b()I

    move-result v3

    .line 56
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/b/b$a;->c()I

    move-result v4

    .line 57
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/b/b$a;->e()I

    move-result v1

    .line 59
    iget-object v5, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    invoke-virtual {v5}, Lcom/baidu/tts/b/b/b/b$a;->d()I

    move-result v6

    .line 60
    mul-int/lit8 v5, v0, 0x2

    .line 61
    new-instance v0, Landroid/media/AudioTrack;

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/k/h;)Lcom/baidu/tts/aop/tts/TtsError;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 106
    const-string v0, "AudioTrackPlayer"

    const-string v1, "enter put"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz p1, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->b()I

    move-result v1

    .line 109
    if-eq v1, v10, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->b(Lcom/baidu/tts/k/h;)V

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->d()[B

    move-result-object v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Lcom/baidu/tts/h/a/b;

    array-length v3, v2

    invoke-virtual {v0, v3}, Lcom/baidu/tts/h/a/b;->b(I)V

    .line 116
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Lcom/baidu/tts/h/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/h/a/b;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 145
    if-gez v1, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->c()I

    move-result v1

    .line 147
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/k/h;

    .line 148
    invoke-virtual {v0, v1}, Lcom/baidu/tts/k/h;->c(I)V

    .line 149
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/b/b/b;->e(Lcom/baidu/tts/k/h;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/b/b;->c(Lcom/baidu/tts/k/h;)V

    .line 155
    :cond_3
    :goto_1
    const-string v0, "AudioTrackPlayer"

    const-string v1, "end put"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_4
    return-object v11

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->d:Lcom/baidu/tts/h/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/h/a/b;->c()Lcom/baidu/tts/h/a/a;

    move-result-object v3

    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-virtual {v3}, Lcom/baidu/tts/h/a/a;->a()I

    move-result v4

    .line 120
    invoke-virtual {v3}, Lcom/baidu/tts/h/a/a;->b()I

    move-result v5

    .line 121
    :goto_2
    if-ge v0, v5, :cond_6

    iget-object v6, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    if-ne v6, v10, :cond_7

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 133
    invoke-virtual {v3}, Lcom/baidu/tts/h/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->c()I

    move-result v0

    .line 135
    invoke-virtual {v3}, Lcom/baidu/tts/h/a/a;->d()F

    move-result v3

    .line 136
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 137
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/b/b/b;->a(I)I

    move-result v4

    .line 138
    const-string v5, "AudioTrackPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "percent="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "--currentProgress="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "--progress="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v5, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/baidu/tts/k/h;->z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/k/h;

    .line 141
    invoke-virtual {v0, v4}, Lcom/baidu/tts/k/h;->c(I)V

    .line 142
    invoke-direct {p0, v0}, Lcom/baidu/tts/b/b/b/b;->e(Lcom/baidu/tts/k/h;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    sub-int v6, v5, v0

    .line 123
    const-string v7, "AudioTrackPlayer"

    const-string v8, "before write"

    invoke-static {v7, v8}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    add-int v7, v0, v4

    .line 125
    iget-object v8, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v8, v2, v7, v6}, Landroid/media/AudioTrack;->write([BII)I

    move-result v6

    .line 126
    const-string v7, "AudioTrackPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "writtenbytes="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--dataLength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 127
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 126
    invoke-static {v7, v8}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    add-int/2addr v0, v6

    goto/16 :goto_2

    .line 153
    :cond_8
    const-string v0, "AudioTrackPlayer"

    const-string v1, "put responseBag=null"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/tts/b/b/b/b;->a:Lcom/baidu/tts/b/b/a;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AudioTrackPlayerParams:",
            "Ljava/lang/Object;",
            ">(TAudioTrackPlayerParams;)V"
        }
    .end annotation

    .prologue
    .line 43
    check-cast p1, Lcom/baidu/tts/b/b/b/b$a;

    iput-object p1, p0, Lcom/baidu/tts/b/b/b/b;->c:Lcom/baidu/tts/b/b/b/b$a;

    .line 44
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 71
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 87
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 88
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 89
    return-void
.end method

.method public d()Lcom/baidu/tts/aop/tts/TtsError;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 97
    iput-object v1, p0, Lcom/baidu/tts/b/b/b/b;->b:Landroid/media/AudioTrack;

    .line 98
    return-object v1
.end method
